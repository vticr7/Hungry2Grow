//
//  ItemListViewModel.swift
//  Hungry2Grow
//
//  Created by Vaibhav  Tiwary on 19/04/24.
//

import Foundation
import Foundation
struct Item: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
class ItemListViewModel: ObservableObject {
    @Published var items: [Item] = []
    @Published var errorMessage: String = ""
    
    func fetchItems() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            errorMessage = "Invalid URL"
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
                return
            }
            
            guard let data = data else {
                DispatchQueue.main.async {
                    self.errorMessage = "No data received"
                }
                return
            }
            
            do {
                let decodedItems = try JSONDecoder().decode([Item].self, from: data)
                DispatchQueue.main.async {
                    self.items = decodedItems
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
            }
        }.resume()
    }
}
