import SwiftUI

struct AddNewRecipes: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showIngredientPopup = false // State to control sheet visibility
    var ingredient: Ingredient

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Header Section
                HStack {
                    Text("    New Recipes")
                        .font(.title)
                        .bold()
                    Spacer().frame(height: 10)
                }
                .frame(height: 80)
                .background(Color(.systemGray6))

                // Image upload area
                VStack {
                    Image(systemName: "photo.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                        .foregroundColor(myColors.appOrange)

                    Text("Upload Photo")
                        .padding(.top, -15)
                        .font(.system(size: 25, weight: .bold))
                }
                .frame(maxWidth: .infinity, minHeight: 150)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(myColors.appOrange, style: StrokeStyle(lineWidth: 2, dash: [5]))
                )
                .padding(.vertical)

                // Title input
                Text("Title")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                TextField("Title", text: .constant(""))
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)

                // Description input
                Text("Description")
                    .font(.headline)
                    .padding(.horizontal)
                    .fontWeight(.bold)

                TextField("Description", text: .constant(""))
                    .frame(alignment: .leading)
                    .padding()
                    .frame(width: 367, height: 130, alignment: .topLeading)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)

                // Add Ingredients section
                HStack {
                    Text("Add Ingredient")
                        .font(.headline)
                    Spacer()
                    Button(action: {
                        showIngredientPopup.toggle() // Show popup when button is tapped
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(myColors.appOrange)
                    }
                }
                .padding(.horizontal)

                Spacer()
            }
            .navigationBarItems(
                leading: Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(myColors.appOrange),
                trailing: Button("Save") {
                    // Action to save the recipe
                }
                .foregroundColor(myColors.appOrange)
            )
        }
        .sheet(isPresented: $showIngredientPopup) {
            AddIngredientView(isPresented: .constant(true)) // The popup content view
        }
        
        HStack {
                    Text("\(ingredient.quantity)")
                        .font(.headline)
                        .foregroundColor(myColors.appOrange).bold()
                    
                    Text(ingredient.name)
                        .font(.headline)
                        .foregroundColor(myColors.appOrange).bold()
                    
                    Spacer()
                    
            Text(ingredient.measurement).frame(width: 90,height:29 )                         .padding(.horizontal, 7)
                        .padding(.vertical, 2)
                        .background(myColors.appOrange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
               
        .padding()
        .background(Color(.systemGray5)).frame(width:358, height: 52)
        .cornerRadius(8)
        .padding(.horizontal)
            }
        }
        


#Preview {
    AddNewRecipes(ingredient: Ingredient(quantity: 1, name: "plasamic", measurement: "🥄spoon"))
}
