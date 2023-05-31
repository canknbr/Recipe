//
//  RecipeDetailView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @State var pulseAnim = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()

                Group {
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)

                    RecipeRatingView(recipe: recipe)
                    RecipeCookingView(recipe: recipe)
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ing in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(ing)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }

                    Text("Instructions")
                        .bold()
                        .modifier(TitleModifier())

                    ForEach(recipe.instructions, id: \.self) { ins in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                            Text(ins)
                                .font(.system(.body, design: .serif))
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                        }
                    }

                }.padding(.horizontal, 24)
                    .padding(.vertical, 12)
            }
        }.edgesIgnoringSafeArea(.top)
            .overlay(
                HStack {
                    Spacer()
                    VStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.down.circle.fill")
                                .font(.title)
                                .foregroundColor(.white)
                                .shadow(radius: 4)
                                .scaleEffect(pulseAnim ? 1.2 : 0.95)
                                .opacity(pulseAnim ? 1 : 0.8)
                                .animation(.easeOut(duration: 1.2).repeatForever(autoreverses: true), value: pulseAnim)
                        }.padding()
                        Spacer()
                    }
                }
            ).onAppear {
                pulseAnim.toggle()
            }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}
