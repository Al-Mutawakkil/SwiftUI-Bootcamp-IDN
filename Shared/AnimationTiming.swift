//
//  AnimationTiming.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 29/09/21.
//

import SwiftUI

struct AnimationTiming: View {
  @State var isAnimated: Bool = false
  
  var body: some View {
    VStack {
      Button("Button") {
        isAnimated.toggle()
      }
      RoundedRectangle(cornerRadius: 20)
              .frame(width: isAnimated ? 350 : 50, height: 100)
              .animation(.spring())
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimated ? 300 : 50, height: 100)
//        .animation(.default)
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimated ? 300 : 50, height: 100)
//        .animation(.easeIn(duration: 5.0))
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimated ? 300 : 50, height: 100)
//        .animation(Animation.easeOut(duration: 5.0))
//      RoundedRectangle(cornerRadius: 20)
//        .frame(width: isAnimated ? 300 : 50, height: 100)
//        .animation(Animation.easeInOut(duration: 5.0))

    }
  }
}

struct AnimationTiming_Previews: PreviewProvider {
  static var previews: some View {
    AnimationTiming()
  }
}
