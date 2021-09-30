//
//  TernaryBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 29/09/21.
//

import SwiftUI

struct TernaryBootcamp: View {
  
  @State var isStarting: Bool = false
  
  var body: some View {
    VStack {
//      Button("Button: \(isStarting.description)") {
//        isStarting.toggle()
//      }
      
      Button(action: {isStarting.toggle()}, label: {
        Text("Button: \(isStarting.description)")
          .foregroundColor(isStarting ? Color.red : Color.blue)
      })
      
      RoundedRectangle(cornerRadius: 25.0)
        .fill(isStarting ? Color.red : Color.blue)
        .frame(width: 200, height: 100)
//      if isStarting{
//        RoundedRectangle(cornerRadius: 25.0)
//          .fill(Color.red)
//          .frame(width: 200, height: 100)
//      } else {
//        RoundedRectangle(cornerRadius: 25.0)
//          .fill(Color.blue)
//          .frame(width: 200, height: 100)
//      }
    }
  }
}

struct TernaryBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TernaryBootcamp()
  }
}
