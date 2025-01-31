//
//  ItemDetailView.swift
//  ItemsStore
//
//  Created by Alberto Jesus Tepale Diagas on 30/01/25.
//

import SwiftUI

struct ItemDetailView: View {
    @State var quantityRemaining = Int.random(in: 1...10)
    let itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()

            Image(systemName: "photo")
                .font(.system(size: 200))
                .foregroundColor(.gray)
                .padding()
            Text("Quantity remaining: \(quantityRemaining)")
            Spacer()
            
            Button {
                if (quantityRemaining > 0) {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add one to your cart")
            }
            Spacer()
        }
    }
}

#Preview {
    ItemDetailView(itemName: "Test item")
}
