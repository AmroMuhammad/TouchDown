//
//  TopBarDetailView.swift
//  Touchdown
//
//  Created by Amr Muhammad on 07/03/2023.
//

import SwiftUI

struct TopBarDetailView: View {
    @State private var isAnimating = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading,spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)

            
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0  : -35)
        }
        .onAppear {
            withAnimation((.easeOut(duration: 0.75))){
                isAnimating.toggle()
            }
        }
    }
}

struct TopBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
