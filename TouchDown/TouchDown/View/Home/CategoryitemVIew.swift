//
//  CategoryitemVIew.swift
//  Touchdown
//
//  Created by Amr Muhammad on 06/03/2023.
//

import SwiftUI

struct CategoryitemVIew: View {
    
    let category:Category
    
    var body: some View {
        Button {} label: {
            
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray,lineWidth: 1)
            )
        }

    }
}

struct CategoryitemVIew_Previews: PreviewProvider {
    static var previews: some View {
        CategoryitemVIew(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
