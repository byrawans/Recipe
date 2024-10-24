import Foundation
struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var ingredients: [Ingredient]
}

struct Ingredient: Identifiable {
    var id = UUID()
    var name: String
    var measurement: String
    var serving: Int
}
