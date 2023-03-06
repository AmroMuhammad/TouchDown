//
//  Constant.swift
//  Touchdown
//
//  Created by Amr Muhammad on 06/03/2023.
//

import SwiftUI

// COLOR
let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)
let players : [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2 )
}
