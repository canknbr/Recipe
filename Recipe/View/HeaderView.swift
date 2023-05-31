//
//  HeaderView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct HeaderView: View {
    @State var showHeadline = false
    var header : Header
    var slideAnimation: Animation {
        Animation.interactiveSpring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5).speed(1).delay(0.25)
    }

    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFit()
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .bold()
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorTransparentLight"))
            }.frame(width: 285, height: 105, alignment: .center)
                .offset(x: -66, y:showHeadline ? 75 : 220)
                .animation(slideAnimation, value: showHeadline)
                .onAppear {
                    showHeadline.toggle()
                }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header : headersData[0]).previewLayout(.sizeThatFits).environment(\.colorScheme, .dark)
    }
}
