//
//  InitializerAndEnum.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 28/09/21.
//

import SwiftUI

struct InitializerAndEnum: View {
  let title: String
  let count: Int
  let backgroundColor: Color
  
  enum Fruit {
    case apple
    case banana
  }
  
  init(count: Int, fruit: Fruit) {
    self.count = count
    
    if fruit == .apple {
      self.title = "Apple"
      self.backgroundColor = .red
    } else {
      self.title = "Banana"
      self.backgroundColor = .yellow
    }
  }
  
  var body: some View {
    VStack(spacing: 12) {
      Text("\(count)")
        .font(.largeTitle)
        .foregroundColor(.white)
        .underline()
      Text(title)
        .font(.headline)
        .foregroundColor(.white)
    }
    .frame(width: 150, height: 150)
    .background(backgroundColor)
    .cornerRadius(10)
  }
}

struct InitializerAndEnum_Previews: PreviewProvider {
  static var previews: some View {
    HStack {
      InitializerAndEnum(count: 10, fruit: .apple)
      InitializerAndEnum(count: 5, fruit: .banana)
    }
  }
}
