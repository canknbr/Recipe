//
//  IconModifies.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}
