//
//  RecipeCardView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    let feedback = UIImpactFeedbackGenerator(style: .heavy)
    @State var isShowModel = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    Image(systemName: "bookmark")
                        .font(.title.weight(.light))
                        .foregroundColor(.white)
                        .imageScale(.small)
                        .shadow(color: Color("ColorTransparentLight"), radius: 2, x: 0, y: 0)
                        .padding(.trailing, 20)
                        .padding(.top, 22)
                    , alignment: .topTrailing
                )
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)

                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                RecipeRatingView(recipe: recipe)

              RecipeCookingView(recipe: recipe)

            }.padding()
                .padding(.bottom, 12)
        }.background(.white)
            .cornerRadius(20)
            .shadow(color: Color("ColorTransparentLight"), radius: 8, x: 0, y: 0)
            .onTapGesture {
                feedback.impactOccurred()
                isShowModel = true
            }
            .sheet(isPresented: $isShowModel) {
                RecipeDetailView(recipe: recipe)
            }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
