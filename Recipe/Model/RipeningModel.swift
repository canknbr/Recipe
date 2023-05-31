//
//  RipeningModel.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import Foundation

struct Ripening : Identifiable{
    let id = UUID()
    let image : String
    let stage : String
    let title : String
    let description : String
    let ripeness : String
    let instruction : String
}
