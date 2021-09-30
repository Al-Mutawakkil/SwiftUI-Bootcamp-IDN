//
//  Stack.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct Stack: View {
  var body: some View {
    HStack {
      Circle()
      Circle()
    }.padding()
  }
}

struct Stack_Previews: PreviewProvider {
  static var previews: some View {
    Stack()
  }
}
