//
//  RecipeModel.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct Recipe : Identifiable {
    var id = UUID()
    let title : String
    let headline : String
    let image : String
    let rating : Int
    let serves : Int
    let preparation : Int
    let cooking : Int
    let instructions : [String]
    let ingredients : [String]
}
