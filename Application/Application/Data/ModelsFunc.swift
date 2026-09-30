
        
internal import Foundation
internal import SwiftUI

//Fonction filtrante catégorie par créativité
func filteredCreativityByCategory(category: Category) -> [Creativity] {
    
    let filteredCreativity = dataCreativity.filter { data in
        data.category == category
    }
    
    return filteredCreativity
}

//Fonction reset random
func getRandomCreativityByCategory(cat: Category) -> Creativity {
    return filteredCreativityByCategory(category: cat).randomElement()!
}

//Fonction récupération couleur par catégorie
func getCategoryColor(for category: Category) -> Color {
    switch category {
    case .reflexion:
        return .redSpark
    case .intuition:
        return .blueSpark
    case .creation:
        return .yellowSpark
    case .impulsion:
        return .greenSpark
    }
}

//Fonction récupération photos par album
func filteredAlbumByChild(child: Profile) -> [Album] {
    
    let fitleredAlbum = dataAlbum.filter { data in
        
        data.childName.id == child.id
    }
    
    return fitleredAlbum
}
