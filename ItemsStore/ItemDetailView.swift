//
//  ItemDetailView.swift
//  ItemsStore
//
//  Created by Alberto Jesus Tepale Diagas on 30/01/25.
//

import SwiftUI

struct ItemDetailView: View {
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
            Spacer()
            
            Button {
                print("Button tapped")
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
