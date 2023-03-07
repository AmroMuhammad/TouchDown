//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct AddToCardDetailView: View {
    var body: some View {
        Button {} label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }.padding(15)
            .background(sampleProduct.colorRGB)
            .clipShape(Capsule())
    }
}

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
