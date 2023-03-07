//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5) {
            // NAVBAR
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            
            HeaderDetailView()
                .padding()
            
            // DETAIL TOP PART
            
            TopBarDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                
                // DESCRIPTION
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? "N/A")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                // QUANTITY + FAVORITE
                
                QuantityFavoriteDetailVIew()
                    .padding(.vertical,10)
                
                // ADD TO CART
                
                AddToCardDetailView()
                    .padding(.bottom,20)
                
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top,-105)
            )
            .zIndex(0)
            
        }
        .ignoresSafeArea(.all,edges: .all)
        .background(
            (shop.selectedProduct?.colorRGB ?? .red)
                .ignoresSafeArea(.all,edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
