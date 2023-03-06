//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Amr Muhammad on 06/03/2023.
//

import Foundation

struct Category:Codable,Identifiable{
    let id:Int
    let name:String
    let image:String
}
