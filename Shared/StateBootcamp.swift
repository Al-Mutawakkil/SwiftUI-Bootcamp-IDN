//
//  StateBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 29/09/21.
//

import SwiftUI

struct StateBootcamp: View {
  @State var backgroundColor: Color = Color.green
  @State var mTitle: String = "Title"
  @State var count: Int = 0
  
  var body: some View {
    ZStack {
      backgroundColor.edgesIgnoringSafeArea(.all)
      VStack(spacing: 20) {
        Text(mTitle)
          .font(.title)
        Text("Count: \(count)")
          .font(.headline)
          .underline()
        HStack {
          Button("Button 1") {
            backgroundColor = Color.orange
            mTitle = "Merah"
            count += 1
          }
          Button("Button 2") {
            backgroundColor = Color.purple
            mTitle = "Ungu"
            count -= 1
          }
        }
      }
    }
  }
}

struct StateBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    StateBootcamp()
  }
}
