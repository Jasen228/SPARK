//
//  Models.swift
//  Application
//
//  Created by apprenant102 on 28/10/2025.
//

internal import SwiftUI

//Catégories
enum Category : String {
    case reflexion = "Réflexion"
    case impulsion = "Impulsion"
    case intuition = "Intuition"
    case creation = "Création"
}

//Matériaux
enum Materials : String {
    case crayon = "Crayons"
    case crayonscouleurs = "Crayons de couleurs"
    case des = "Dés"
    case enceinte = "Enceinte"
    case feuillepapier = "Feuilles de papier"
    case fourchette = "Objets divers"
    case journal = "Magazine"
    case lampe = "Lampe"
    case paireciseaux = "Paire de ciseaux"
    case tubecolle = "Tube de colle"
    case boiteamouchoirs = "Boîte de mouchoirs vide"
    case aucun = "Aucun"

}

//Modèle pour les catégories
struct Creativity : Identifiable {
    let id = UUID()
    var category : Category
    var activityName: String
    var description: String
    var materials : [Materials]
    var fore: Color
    var back: Color
    var isWithParent: Bool
}

//Modèle pour l'album
struct Album: Identifiable {
    let id = UUID()
    var childName: Profile
    var image: String
    var date: String
}

// Modèle de photo
struct PhotoItem: Identifiable {
    let id = UUID()
    var name: String
}

//Modèle pour le profil
struct Profile: Identifiable {
    let id = UUID()
    var icon: String
    var personName: String
    var age: Int
    var surname: String
}

//Modèle pour Cercle
struct CircleLabel: Identifiable  {
    let id = UUID()
    let text: String
    let color: Color
    let axex: Int
    let axey: Int
    let category: Category
}

// Modèle Enfant
struct Enfant {
    let nom: String
    let images: [String]
}
