//
//  ContentView.swift
//  ItemsStore
//
//  Created by Alberto Jesus Tepale Diagas on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Items in stock")
                    .font(.title)
                    .padding()
                Spacer()
                
                NavigationLink(
                    destination: ItemDetailView(itemName: "Shrimp Chips message"),
                    label: {
                        Text("Shrimp Chips")
                    }
                )
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
