import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    var title: String
    var description: String
    var imageName: String
}

struct Ingredient: Identifiable {
    let id = UUID()
    var quantity: Int
    var name: String
    var measurement: String
}
