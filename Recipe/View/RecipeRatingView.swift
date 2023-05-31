//
//  RecipeRatingView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe : Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... (recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
    }
}
