//
//  AvocadosView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct AvocadosView: View {
    @State var pulseAnimation = false
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulseAnimation ? 1 : 0.8 )
                .opacity(pulseAnimation ? 1 : 0.8 )
                .animation(.easeIn(duration: 1.5).repeatForever(autoreverses: true), value: pulseAnimation)
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
                Creamy, green, and full of nutrients!
                 Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes
                for breakfast, lunch, dinner & more!
                """)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .font(.system(.headline,design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .lineSpacing(8)
                .frame(maxWidth: 640,minHeight: 120)
            }
            .padding()

            Spacer()
        }.background(
            Image("background")
                .resizable()
                .scaledToFill()
        ).edgesIgnoringSafeArea(.all)
            .onAppear {
                withAnimation(.linear(duration: 0.2)){
                    pulseAnimation.toggle()
                }
            }
    }
    
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            
    }
}
