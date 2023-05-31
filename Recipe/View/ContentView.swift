//
//  ContentView.swift
//  Recipe
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes :[Recipe] = recipesData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    }
                }

                Text("Avocado Dishes")
                    .bold()
                    .modifier(TitleModifier())

                DishesView()
                    .frame(maxWidth: 640)
                
                Text("Avocado Facts")
                    .bold()
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)

                    }
                    }.padding(.vertical)
                        .padding(.leading,60)
                        .padding(.trailing,20)
                }
                
                Text("Avocado Recipes")
                    .bold()
                    .modifier(TitleModifier())
                
                VStack(alignment:.center,spacing: 20){
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }.frame(maxWidth: 640)
                    .padding(.horizontal)

                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .bold()
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }.frame(maxWidth: 640)
                    .padding()
                    .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData)
    }
}
