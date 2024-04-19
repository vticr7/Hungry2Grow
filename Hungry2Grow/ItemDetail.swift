//
//  ItemDetail.swift
//  Hungry2Grow
//
//  Created by Vaibhav  Tiwary on 19/04/24.
//

import Foundation
import SwiftUI

import SwiftUI

struct ItemDetailView: View {
    let item: Item
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text(item.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.green)
                    
                    Text(item.body)
                        .font(.body)
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding()
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
