//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct AddToCardDetailView: View {
    @EnvironmentObject var shop:Shop
    var body: some View {
        Button {} label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }.padding(15)
            .background(shop.selectedProduct?.colorRGB ?? Color.red)
            .clipShape(Capsule())
    }
}

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
