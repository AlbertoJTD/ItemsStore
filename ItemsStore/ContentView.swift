//
//  ContentView.swift
//  ItemsStore
//
//  Created by Alberto Jesus Tepale Diagas on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    var itemsStock: [String] = ["Shrimp Chips", "Yogurth", "Bottle of water", "Onions"]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Items in stock")
                    .font(.title)
                    .padding()
                Spacer()
                
                ForEach(0..<itemsStock.count) { itemIndex in
                    NavigationLink(
                        destination: ItemDetailView(itemName: itemsStock[itemIndex]),
                        label: {
                            Text(itemsStock[itemIndex])
                        }
                    )
                    .padding(.bottom, 10)
                }
                Spacer()
            }
        }
        .navigationTitle(Text("Ligaya's Store"))
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    ContentView()
}
