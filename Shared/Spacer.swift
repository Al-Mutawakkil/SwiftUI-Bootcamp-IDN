//
//  Spacer.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct SpacerBootcamp: View {
  var body: some View {
    VStack {
      HStack {
        Image(systemName: "xmark")
        Spacer()
        Image(systemName: "gear")
      }
      .font(.title)
//      .background(Color.blue)
      .padding(.horizontal)
      
      Spacer()
      
      Rectangle().frame( height: 55)
    }
  }
}

struct Spacer_Previews: PreviewProvider {
  static var previews: some View {
    SpacerBootcamp()
  }
}
