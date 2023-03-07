//
//  Shop.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct = false
    @Published var selectedProduct: Product? = nil
    
}
