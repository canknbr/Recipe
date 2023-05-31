//
//  RipeningView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct RipeningView: View {
    
        let ripening : Ripening
        @State var slideAnimation = false
        var body: some View {
            VStack {
                Image(ripening.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())

                    .background(
                        Circle()
                            .fill(Color("ColorGreenLight"))
                            .frame(width: 110, height: 110, alignment: .center)
                    )
                    .background(
                        Circle()
                            .fill(Color("ColorAppearanceAdaptive"))
                            .frame(width: 120, height: 120, alignment: .center)
                    )
                    .zIndex(1)
                    .animation(.easeIn(duration: 1), value: slideAnimation)
                    .offset(y:slideAnimation ? 25 : -55)
                    
                VStack(alignment: .center, spacing: 10) {
                    VStack(alignment: .center, spacing: 0) {
                        Text(ripening.stage).font(.system(.largeTitle, design: .serif)).bold()
                        Text("Stage").font(.system(.body, design: .serif))
                            .fontWeight(.heavy)
                    }.foregroundColor(Color("ColorGreenMedium"))
                        .padding(.top, 45)
                        .frame(width: 180)
                    Text(ripening.title).font(.system(.title, design: .serif)).bold().foregroundColor(Color("ColorGreenMedium")).padding(.vertical, 12).padding(.horizontal, 0)
                        .frame(width: 220)
                        .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight")]), startPoint: .bottom, endPoint: .top)))
                        .shadow(color: Color("ColorTransparentLight"), radius: 6, x: 0, y: 6)
                    Spacer()
                    Text(ripening.description)
                        .foregroundColor(Color("ColorGreenDark"))
                        .fontWeight(.bold)
                        .lineLimit(nil)
                    Spacer()
                    Text(ripening.ripeness)
                        .foregroundColor(.white)
                        .font(.system(.callout, design: .serif))
                        .bold()
                        .padding(.vertical)
                        .padding(.horizontal, 0)
                        .frame(width: 185)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                        )
                        .shadow(color: Color("ColorTransparentLight"), radius: 6, x: 0, y: 6)
                    Text(ripening.instruction)
                        .font(.footnote)
                        .foregroundColor(Color("ColorGreenLight"))
                        .bold()
                        .lineLimit(3)
                        .frame(width: 160)
                    Spacer()
                }
                .zIndex(0)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .frame(width: 320, height: 585, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(30)
                .padding(.top,-20)
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                slideAnimation.toggle()
            }
        }
    }


struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[1])
    }
}
