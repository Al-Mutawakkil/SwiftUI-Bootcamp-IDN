//
//  Padding.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct Padding: View {
  var body: some View {
    VStack(alignment: .leading){
      Text("Hello World")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .padding(.bottom, 20)
      Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit dolorem ipsum quia dolor")
    }
    .padding()
    .padding(.vertical, 10)
    .background(
      Color.white
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 0)
    )
    .padding(.horizontal, 10)
  }
}

struct Padding_Previews: PreviewProvider {
  static var previews: some View {
    Padding()
  }
}
