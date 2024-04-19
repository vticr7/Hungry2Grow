//
//  ItemListView.swift
//  Hungry2Grow
//
//  Created by Vaibhav  Tiwary on 19/04/24.
//

import Foundation
import SwiftUI

import SwiftUI

struct ItemListView: View {
    @StateObject private var viewModel = ItemListViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Hungry2Grow")
                        .font(.system(size: 48, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing)
                                .mask(Text("Hungry2Grow").font(.system(size: 48, weight: .bold, design: .rounded)))
                        )
                        .shadow(color: .green.opacity(0.3), radius: 10, x: 0, y: 5)
                    
                    Text("Assignment")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                        .foregroundColor(.white.opacity(0.8))
                        .padding(.bottom)
                    
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 20) {
                            ForEach(viewModel.items) { item in
                                NavigationLink(destination: ItemDetailView(item: item)) {
                                    ItemCardView(item: item)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .onAppear {
                viewModel.fetchItems()
            }
            .alert(isPresented: .constant(!viewModel.errorMessage.isEmpty)) {
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ItemCardView: View {
    let item: Item
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: .green.opacity(0.3), radius: 10, x: 0, y: 5)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(item.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(item.body)
                    .font(.body)
                    .foregroundColor(.white.opacity(0.8))
                    .lineLimit(3)
            }
            .padding()
        }
        .frame(height: 150)
    }
}
