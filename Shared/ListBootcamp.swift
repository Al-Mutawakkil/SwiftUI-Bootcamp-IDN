//
//  ListBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 30/09/21.
//

import SwiftUI

struct ListBootcamp: View {
  
  @State var fruits: [String] = [
    "Banana", "Orange", "Grapes", "apple"
  ]
  
  @State var vegetables: [String] = [
    "Carrot", "Potato", "Spinach"
  ]
  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Fruits")) {
          ForEach(fruits, id: \.self) { fruit in
            Text(fruit.capitalized)
          }
          .onDelete(perform: { indexSet in
            fruits.remove(atOffsets: indexSet)
          })
          .onMove(perform: { indices, newOffset in
            fruits.move(fromOffsets: indices, toOffset: newOffset)
          })
        }
        
        Section(header: Text("Vegetables")) {
          ForEach(vegetables, id: \.self) { fruit in
            Text(fruit.capitalized)
          }
          .onDelete(perform: { indexSet in
            vegetables.remove(atOffsets: indexSet)
          })
        }
      }
      .navigationTitle("Grocery List")
      .navigationBarItems(leading: EditButton())
    }
    
  }
}

struct ListBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ListBootcamp()
  }
}
