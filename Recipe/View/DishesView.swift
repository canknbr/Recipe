//
//  DishesView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment:.center,spacing: 4) {
            VStack (alignment:.leading,spacing: 5){
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }

            VStack(alignment:.center,spacing: 16) {
                HStack {
                    Divider()
                }

                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }

            VStack(alignment:.trailing,spacing: 5) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }.font(.system(.callout, design: .serif))
            .foregroundColor(.gray)
            .padding(.horizontal)
            .frame(maxHeight: 220)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView().previewLayout(.fixed(width: 414, height: 280))
    }
}
