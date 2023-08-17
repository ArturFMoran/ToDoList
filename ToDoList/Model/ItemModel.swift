//
//  ItemModel.swift
//  ToDoList
//
//  Created by Artur Felipe Moran on 16.08.2023.
//

import Foundation


struct ItemModel {
    
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        ItemModel(id: id, title: title, isCompleted: isCompleted)
    }
    
}
