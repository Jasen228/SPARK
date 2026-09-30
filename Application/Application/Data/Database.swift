//
//  File.swift
//  Application
//
//  Created by apprenant102 on 28/10/2025.
//

internal import SwiftUI

var dataCreativity : [Creativity] = [
    
//REFLEXION

Creativity(category: .reflexion, activityName: "La chaîne des questions", description:"Répondre à une question et en créer une nouvelle à partir de la réponse.", materials: [.feuillepapier, .crayon], fore: .redSpark, back: .backSpark, isWithParent: true),
Creativity(category: .reflexion, activityName: "Le puzzle des solutions", description:"L’adulte propose un problème ouvert, l’enfant doit proposer une solution en étapes. Chaque étape est discutée et améliorée.", materials: [.feuillepapier, .crayon], fore: .redSpark, back: .backSpark, isWithParent: true),
Creativity(category: .reflexion, activityName: "Histoire en trois mots", description:"Donner trois mots (ex: grenouille, fusée, forêt) et inventer une histoire courte.", materials: [.feuillepapier, .crayon], fore: .redSpark, back: .backSpark, isWithParent: false),
Creativity(category: .reflexion, activityName: "Moi en …", description:"L’enfant se met dans la peau d’un objet ou d’un animal et imagine ce qu’il dirait.", materials: [.feuillepapier, .crayonscouleurs], fore: .redSpark, back: .backSpark, isWithParent: false),
Creativity(category: .reflexion, activityName: "Dés à histoires", description:"Utiliser des dés illustrés ou des cartes d’images et inventer une histoire à partir des symboles tirés.", materials: [.des, .feuillepapier, .crayonscouleurs], fore: .redSpark, back: .backSpark, isWithParent: false),
Creativity(category: .reflexion, activityName: "Les énigmes du jour", description:"Proposer une petite énigme logique chaque jour. L’enfant justifie sa réponse.", materials: [.feuillepapier, .crayon], fore: .redSpark, back: .backSpark, isWithParent: true),
Creativity(category: .reflexion, activityName: "Le débat rigolo", description:"Choisir un sujet amusant (ex: les chats sont-ils plus malins que les chiens ?) et chacun défend son avis.", materials: [.aucun], fore: .redSpark, back: .backSpark, isWithParent: true),
Creativity(category: .reflexion, activityName: "Le mot caché", description:"Deviner un mot secret en posant uniquement des questions fermées (oui/non).", materials: [.feuillepapier, .crayon], fore: .redSpark, back: .backSpark, isWithParent: true),
Creativity(category: .reflexion, activityName: "Le détective logique", description:"Résoudre une mini-enquête à partir d’indices donnés par le parent.", materials: [.feuillepapier, .crayon], fore: .redSpark, back: .backSpark, isWithParent: true),
Creativity(category: .reflexion, activityName: "Inventons une règle", description:"Créer une nouvelle règle pour la maison et réfléchir à ses conséquences.", materials: [.aucun], fore: .redSpark, back: .backSpark, isWithParent: false),

//INTUITION
Creativity(category: .intuition, activityName: "Devine ma pensée", description:"Deviner ce que l’autre pense en posant des questions simples.", materials: [.aucun], fore: .blueSpark, back: .backSpark, isWithParent: true),
Creativity(category: .intuition, activityName: "L’idée cachée", description:"L’adulte commence un dessin mystérieux, l’enfant devine la suite.", materials: [.feuillepapier, .crayonscouleurs], fore: .blueSpark, back: .backSpark, isWithParent: true),
Creativity(category: .intuition, activityName: "A quoi ça sert ?", description:"Donner un objet banal et imaginer 5 utilisations insolites.", materials: [.feuillepapier, .crayonscouleurs], fore: .blueSpark, back: .backSpark, isWithParent: false),
Creativity(category: .intuition, activityName: "Mon monde imaginaire", description:"Créer la carte ou le plan d’un monde inventé.", materials: [.feuillepapier, .crayonscouleurs], fore: .blueSpark, back: .backSpark, isWithParent: false),
Creativity(category: .intuition, activityName: "Les formes cachées", description:"Faire des taches aléatoires et deviner ce qu’elles représentent.", materials: [.feuillepapier, .crayonscouleurs], fore: .blueSpark, back: .backSpark, isWithParent: true),
Creativity(category: .intuition, activityName: "Musique et humeur", description:"Écouter un morceau et deviner l’émotion qu’il exprime.", materials: [.enceinte], fore: .blueSpark, back: .backSpark, isWithParent: true),
Creativity(category: .intuition, activityName: "L’objet mystère", description:"Mettre un objet dans une boîte et le deviner en le touchant.", materials: [.boiteamouchoirs, .fourchette], fore: .blueSpark, back: .backSpark, isWithParent: true),
Creativity(category: .intuition, activityName: "Dessine ce que tu ressens", description:"Dessiner une émotion sans la nommer, le parent devine laquelle.", materials: [.feuillepapier, .crayonscouleurs], fore: .blueSpark, back: .backSpark, isWithParent: true),
Creativity(category: .intuition, activityName: "La phrase inachevée", description:"Le parent commence une phrase (‘Un jour, la lune décida de…’) et l’enfant la termine spontanément.", materials: [.aucun], fore: .blueSpark, back: .backSpark, isWithParent: false),
Creativity(category: .intuition, activityName: "L’image renversée", description:"Montrer une image à l’envers pendant 3 secondes, puis la décrire.", materials: [.journal], fore: .blueSpark, back: .backSpark, isWithParent: false),

//CRÉATION
Creativity(category: .creation, activityName: "L’invention fantastique", description:"Choisir deux objets et inventer ensemble une création magique.", materials: [.fourchette, .feuillepapier, .crayon], fore: .yellowSpark, back: .backSpark, isWithParent: true),
Creativity(category: .creation, activityName: "Le dessin transformeur", description:"Transformer une forme au hasard en dessin original.", materials: [.feuillepapier, .crayonscouleurs], fore: .yellowSpark, back: .backSpark, isWithParent: false),
Creativity(category: .creation, activityName: "Collage thématique", description:"Créer un collage autour d’un mot clé (liberté, hiver, futur).", materials: [.journal, .paireciseaux, .tubecolle, .feuillepapier], fore: .yellowSpark, back: .backSpark, isWithParent: false),
Creativity(category: .creation, activityName: "Le paysage intérieur", description:"Choisir un objet et raconter sa journée imaginaire.", materials: [.fourchette], fore: .yellowSpark, back: .backSpark, isWithParent: false),
Creativity(category: .creation, activityName: "Le monstre recyclé", description:"Créer un monstre rigolo avec des matériaux de récupération.", materials: [.boiteamouchoirs, .tubecolle, .paireciseaux], fore: .yellowSpark, back: .backSpark, isWithParent: true),
Creativity(category: .creation, activityName: "Le chapeau magique", description:"Fabriquer un chapeau qui donne un pouvoir imaginaire.", materials: [.feuillepapier, .crayonscouleurs, .tubecolle], fore: .yellowSpark, back: .backSpark, isWithParent: true),
Creativity(category: .creation, activityName: "La BD muette", description:"Créer une mini BD sans texte, racontée uniquement en images.", materials: [.feuillepapier, .crayon], fore: .yellowSpark, back: .backSpark, isWithParent: false),
Creativity(category: .creation, activityName: "La mini invention utile", description:"Imaginer un objet qui faciliterait la vie à la maison et le dessiner.", materials: [.feuillepapier, .crayon], fore: .yellowSpark, back: .backSpark, isWithParent: false),
Creativity(category: .creation, activityName: "Le musée des objets détournés", description:"Inventer des fonctions absurdes à des objets du quotidien.", materials: [.fourchette, .journal], fore: .yellowSpark, back: .backSpark, isWithParent: false),
Creativity(category: .creation, activityName: "Dessine la musique", description:"Écouter une chanson et la représenter par des formes et couleurs.", materials: [.enceinte, .feuillepapier, .crayonscouleurs], fore: .yellowSpark, back: .backSpark, isWithParent: false),

//IMPULSION
Creativity(category: .impulsion, activityName: "L'arrêt créatif", description:"Danser librement sur de la musique et s’arrêter dans une pose dès qu’elle s’arrête.", materials: [.enceinte], fore: .greenSpark, back: .backSpark, isWithParent: true),
Creativity(category: .impulsion, activityName: "Couleur des mouvements", description:"Associer une couleur à une émotion et l’exprimer en mouvements.", materials: [.aucun], fore: .greenSpark, back: .backSpark, isWithParent: true),
Creativity(category: .impulsion, activityName: "Défi 3 secondes", description:"Dessiner un objet en 3 secondes et trouver 3 utilisations absurdes.", materials: [.feuillepapier, .crayonscouleurs], fore: .greenSpark, back: .backSpark, isWithParent: true),
Creativity(category: .impulsion, activityName: "Gribouillis solitaire", description:"Faire un gribouillis et le transformer en dessin reconnaissable.", materials: [.feuillepapier, .crayonscouleurs], fore: .greenSpark, back: .backSpark, isWithParent: false),
Creativity(category: .impulsion, activityName: "Boîte à idées folles", description:"Noter chaque jour une idée farfelue dans une boîte.", materials: [.boiteamouchoirs, .feuillepapier, .tubecolle], fore: .greenSpark, back: .backSpark, isWithParent: false),
Creativity(category: .impulsion, activityName: "Le mime express", description:"Tirer un mot au hasard et le mimer immédiatement sans préparation.", materials: [.feuillepapier], fore: .greenSpark, back: .backSpark, isWithParent: true),
Creativity(category: .impulsion, activityName: "Le cri du jour", description:"Inventer un son ou un cri drôle pour exprimer son humeur.", materials: [.aucun], fore: .greenSpark, back: .backSpark, isWithParent: false),
Creativity(category: .impulsion, activityName: "Danse du dessin", description:"Mettre de la musique et dessiner sans lever le crayon, au rythme.", materials: [.feuillepapier, .crayonscouleurs, .enceinte], fore: .greenSpark, back: .backSpark, isWithParent: false),
Creativity(category: .impulsion, activityName: "Impro mot fou", description:"Donner un mot aléatoire et inventer une mini-histoire spontanée.", materials: [.aucun], fore: .greenSpark, back: .backSpark, isWithParent: true),
Creativity(category: .impulsion, activityName: "Les gestes en chaîne", description:"Chaque joueur reproduit un geste et en ajoute un autre, jusqu’à l’erreur.", materials: [.aucun], fore: .greenSpark, back: .backSpark, isWithParent: true)
]

//PROFIL

var dataProfile: [Profile] = [
    Profile(icon: "femme", personName: "Maman", age: 35, surname: "Maman Gâteaux"),
    Profile(icon: "fille", personName: "Louise", age: 7, surname: "La Grande Chipie"),
    Profile(icon: "homme", personName: "Papa", age: 40, surname: "Papa Ours"),
    Profile(icon: "garcon", personName: "Anatole", age: 8, surname: "Le Petit Lion"),
    ]

//ALBUM

var dataAlbum: [Album] = [
    Album(childName: dataProfile[1], image: "arbre", date: "07/11/2025"),
    Album(childName: dataProfile[1], image: "fleur", date: "05/11/2025"),
    Album(childName: dataProfile[1], image: "fusee", date: "30/10/2025"),
    Album(childName: dataProfile[1], image: "licorne", date: "28/10/2025"),
    Album(childName: dataProfile[1], image: "papillon", date: "25/10/2025"),
    Album(childName: dataProfile[1], image: "superheros", date: "23/10/2025"),
    Album(childName: dataProfile[3], image: "arbre", date: "07/11/2025"),
    Album(childName: dataProfile[3], image: "fleur", date: "05/11/2025"),
    Album(childName: dataProfile[3], image: "fusee", date: "30/10/2025"),
    Album(childName: dataProfile[3], image: "licorne", date: "28/10/2025"),
    Album(childName: dataProfile[3], image: "papillon", date: "25/10/2025"),
    Album(childName: dataProfile[3], image: "superheros", date: "23/10/2025"),
    ]

//CIRCLE

var dataCircle: [CircleLabel] = [
    CircleLabel(text: "Impulsion", color: .greenSpark, axex: -0, axey: 160, category: .impulsion),
    CircleLabel(text: "Réflexion", color: .redSpark, axex: -100, axey: 130, category: .reflexion),
    CircleLabel(text: "Intuition", color: .blueSpark, axex: 100, axey: -80, category: .intuition),
    CircleLabel(text: "Création", color: .yellowSpark, axex: 0, axey: -110, category: .creation),
] 

//PHOTOS
var images: [PhotoItem] = [
    PhotoItem(name: "tracteur"),
    PhotoItem(name: "papillon"),
    PhotoItem(name: "pasteque"),
    PhotoItem(name: "superheros"),
    PhotoItem(name: "arbre"),
    PhotoItem(name: "licorne"),
]

//PHOTOS ENFANTS
var enfants: [Enfant] = [
    Enfant(nom: "ENFANT 1", images: ["femme", "arbre", "arbre2", "soleil", "poisson", "plage"]),
    Enfant(nom: "ENFANT 2", images: ["licorne", "fondCreatif", "fusee", "fille", "homme", "arbre"])
]
