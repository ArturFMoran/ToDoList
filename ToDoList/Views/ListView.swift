//
//  ListView.swift
//  ToDoList
//
//  Created by Artur Felipe Moran on 15.08.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first Title",
        "This is the second Title",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
                    .onTapGesture {
                        withAnimation {
                            
                        }
                    }
            }
            .onDelete(perform: deletItem)
            .onMove(perform: moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())

            }
        }
    }
    
    func deletItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

