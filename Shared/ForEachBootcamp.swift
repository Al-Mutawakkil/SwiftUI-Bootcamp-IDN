//
//  ForEachBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 28/09/21.
//

import SwiftUI

struct ForEachBootcamp: View {
  var data: [String] = ["Rafli", "Harsyah", "Nanda"]
  var body: some View {
    VStack {
//      ForEach(0..<10) { index in
//        Text("Hi: \(index)")
//      }
      
//      ForEach(data.indices) { index in
//        Text("\(data[index])")
//      }
      ForEach(1..<10) { index in
        Circle()
          .frame(height: 50)
      }
    }
  }
}

struct ForEachBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ForEachBootcamp()
  }
}
