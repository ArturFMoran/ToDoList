//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Artur Felipe Moran on 16.08.2023.
//

import Foundation


class ListViewModel {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First Note", isCompleted: false),
            ItemModel(title: "Second one note", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deletItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem() {
        
    }
}
