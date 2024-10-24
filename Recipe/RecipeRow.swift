import SwiftUICore

struct RecipeRow: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(recipe.title)
                .font(.headline)
            Text(recipe.description)
                .font(.subheadline)
                .lineLimit(1)
        }
        .padding(.vertical, 8)
    }
}
