
import SwiftUI

struct ShowRecipeDetails: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Header with Back and Edit Button
                HStack {
                
                    Spacer()
                    Button(action: {
                        // Edit action
                    }) {
                        Text(" Edit")
                            .foregroundColor(.orange)
                    }
                }
                .padding(.horizontal)
                .padding(.top)
                
                // Title Section
                Text(recipe.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // Image and Description Section
                Image(recipe.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(recipe.description)
                    .font(.body)
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                
                // Ingredients Section
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.top)
                
                VStack(alignment: .leading) {
//                    
                    }
                }
                
                // Delete Button Section
                Button(action: {
                    // Delete action
                }) {
                    Text("Delete Recipe")
                        .foregroundColor(.red)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                .padding(.top)
            }
        }
    }


#Preview {
    RecipeCard(recipe: Recipe(title: " Halomi Salad", description: " Semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture.", imageName: "img"))}
