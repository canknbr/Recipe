//
//  HeaderModel.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI


struct Header : Identifiable {
    var id = UUID()
    var image : String
    var headline : String
    var subheadline : String
}
