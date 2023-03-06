//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct ProductItemView: View {
    let product:Product
    
    var body: some View {
        VStack(alignment: .leading,spacing: 6){
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }.background(product.colorRGB.cornerRadius(12))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
