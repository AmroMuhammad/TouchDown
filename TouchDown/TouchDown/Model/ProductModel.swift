//
//  ProductModel.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct Product: Codable,Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    var colorRGB:Color {return Color(red: color[0], green: color[1], blue: color[2])}
    var formattedPrice:String {return "$\(price)"}
}
