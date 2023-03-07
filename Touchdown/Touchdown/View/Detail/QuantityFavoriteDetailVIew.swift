//
//  QantityFavoriteDetailVIew.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct QuantityFavoriteDetailVIew: View {
    @State private var counter:Int = 0
    @State private var isFavorite:Bool = false

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if(counter > 0){
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if(counter < 100){
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                isFavorite.toggle()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(isFavorite ? .red : .black)
            }

        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QantityFavoriteDetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailVIew()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
