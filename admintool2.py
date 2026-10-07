import argparse
import logging
import shutil
import subprocess
import sys
from datetime import datetime, timedelta
from pathlib import Path


# ---------------------------------------------------------
# CONFIGURATION DU LOG
# ---------------------------------------------------------

LOG_FILE = Path(__file__).with_name("admintool.log")


def configurer_logging(verbose):
    niveau = logging.INFO if verbose else logging.WARNING

    logging.basicConfig(
        filename=LOG_FILE,
        level=niveau,
        format="%(asctime)s %(levelname)-8s %(message)s",
        encoding="utf-8"
    )


# ---------------------------------------------------------
# COMMANDE DISK
# ---------------------------------------------------------

def cmd_disk(args):

    chemin = Path(args.chemin)

    if not chemin.exists():
        logging.error("Chemin introuvable : %s", chemin)
        print("Erreur : chemin introuvable.")
        return 1

    try:
        total, utilise, libre = shutil.disk_usage(chemin)

    except OSError as e:
        logging.error("Erreur disque : %s", e)
        print("Erreur :", e)
        return 1

    pourcentage = utilise / total * 100

    print("Chemin :", chemin)
    print(f"Total : {total / 1024**3:.2f} Go")
    print(f"Utilisé : {utilise / 1024**3:.2f} Go ({pourcentage:.1f} %)")
    print(f"Libre : {libre / 1024**3:.2f} Go")

    horodatage = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

    # Le projet demande le code retour 2
    # si le seuil est dépassé
    if pourcentage >= args.seuil:
        print(f"ALERTE : seuil de {args.seuil} % dépassé")
        logging.warning("Seuil dépassé : %.1f %% >= %d %%", pourcentage, args.seuil)
        return 2

    print(horodatage, " Le seuil n'est pas dépassé")

    return 0


# ---------------------------------------------------------
# COMMANDE BACKUP
# ---------------------------------------------------------

def cmd_backup(args):

    source = Path(args.source)
    destination = Path(args.dest)

    if not source.exists():
        logging.error("Source introuvable : %s", source)
        print("Erreur : source introuvable.")
        return 1

    destination.mkdir(parents=True, exist_ok=True)

    horodatage = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    base = destination / f"{source.name}_{horodatage}"

    try:
        if args.format == "zip":
            archive = shutil.make_archive(str(base), "zip", root_dir=source)
        else:
            archive = shutil.make_archive(str(base), "gztar", root_dir=source)

        print("Sauvegarde créée :", Path(archive).name)
        logging.info("Sauvegarde créée : %s", archive)

        # Rotation : garder les 7 dernières archives
        if args.format == "zip":
            archives = sorted(destination.glob(f"{source.name}_*.zip"))
        else:
            archives = sorted(destination.glob(f"{source.name}_*.tar.gz"))

        for ancienne in archives[:-7]:
            ancienne.unlink()
            print("Ancienne sauvegarde supprimée :", ancienne.name)
            logging.info("Ancienne sauvegarde supprimée : %s", ancienne)

        return 0

    except (OSError, shutil.Error) as e:
        logging.exception("Erreur pendant la sauvegarde")
        print("Erreur pendant la sauvegarde :", e)
        return 1


# ---------------------------------------------------------
# COMMANDE CLEAN
# ---------------------------------------------------------

def cmd_clean(args):

    dossier = Path(args.dossier)

    if not dossier.exists():
        logging.error("Dossier introuvable : %s", dossier)
        print("Erreur : dossier introuvable.")
        return 1

    limite = datetime.now() - timedelta(days=args.jours)
    compteur = 0

    try:
        fichiers = dossier.rglob(args.motif)

        for fichier in fichiers:
            if not fichier.is_file():
                continue

            date_modification = datetime.fromtimestamp(fichier.stat().st_mtime)

            if date_modification < limite:
                if args.dry_run:
                    print("[DRY-RUN] Supprimerait :", fichier)
                else:
                    fichier.unlink()
                    print("Supprimé :", fichier)

                compteur += 1

        if args.dry_run:
            print(compteur, "fichier(s) seraient supprimé(s).")
        else:
            print(compteur, "fichier(s) supprimé(s).")

        logging.info("Nettoyage terminé : %d fichier(s)", compteur)

        return 0

    except (OSError, PermissionError) as e:
        logging.error("Erreur pendant le nettoyage : %s", e)
        print("Erreur :", e)
        return 1


# ---------------------------------------------------------
# COMMANDE CMD
# ---------------------------------------------------------

def cmd_execute(args):

    commande = args.commande

    # Retirer -- si présent
    if commande and commande[0] == "--":
        commande = commande[1:]

    if not commande:
        print("Erreur : aucune commande fournie.")
        return 1

    print("Exécution :", " ".join(commande))
    logging.info("Commande exécutée : %s", " ".join(commande))

    try:
        resultat = subprocess.run(commande, text=True)

        if resultat.returncode != 0:
            logging.error("Commande terminée avec le code %d", resultat.returncode)

        return resultat.returncode

    except FileNotFoundError:
        print("Erreur : commande introuvable.")
        logging.error("Commande introuvable : %s", commande[0])
        return 1

    except OSError as e:
        print("Erreur :", e)
        logging.error("Erreur d'exécution : %s", e)
        return 1


# ---------------------------------------------------------
# ARGPARSE
# ---------------------------------------------------------

def construire_parser():

    parser = argparse.ArgumentParser(
        prog="admintool",
        description="Boîte à outils d'administration système"
    )

    parser.add_argument(
        "-v", "--verbose",
        action="store_true",
        help="activer la journalisation détaillée"
    )

    sous_commandes = parser.add_subparsers(dest="action", required=True)

    # DISK
    disk = sous_commandes.add_parser("disk", help="vérifier l'espace disque")
    disk.add_argument("chemin", nargs="?", default=".", help="chemin à analyser")
    disk.add_argument("--seuil", type=int, default=90, help="seuil d'alerte en % (défaut : 90)")
    disk.set_defaults(func=cmd_disk)

    # BACKUP
    backup = sous_commandes.add_parser("backup", help="créer une sauvegarde horodatée")
    backup.add_argument("source", help="fichier ou dossier à sauvegarder")
    backup.add_argument("--dest", default="sauvegardes", help="dossier de destination")
    backup.add_argument("--format", choices=["zip", "gztar"], default="gztar", help="format de l'archive")
    backup.set_defaults(func=cmd_backup)

    # CLEAN
    clean = sous_commandes.add_parser("clean", help="supprimer les anciens fichiers")
    clean.add_argument("dossier", help="dossier à nettoyer")
    clean.add_argument("--jours", type=int, default=30, help="âge minimum des fichiers")
    clean.add_argument("--motif", default="*.log", help="motif des fichiers, ex: *.log")
    clean.add_argument("--dry-run", action="store_true", help="simuler sans supprimer")
    clean.set_defaults(func=cmd_clean)

    # CMD
    commande = sous_commandes.add_parser("cmd", help="exécuter une commande système")
    commande.add_argument("commande", nargs=argparse.REMAINDER, help="commande à exécuter après --")
    commande.set_defaults(func=cmd_execute)

    return parser


# ---------------------------------------------------------
# MAIN
# ---------------------------------------------------------

def main():
    parser = construire_parser()
    args = parser.parse_args()
    configurer_logging(args.verbose)
    return args.func(args)


if __name__ == "__main__":
    sys.exit(main())
