//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop:Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gears")
            
            Text(shop.selectedProduct?.name ?? "N/A")
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
