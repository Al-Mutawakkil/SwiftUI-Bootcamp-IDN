//
//  TransitionBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 30/09/21.
//

import SwiftUI

struct TransitionBootcamp: View {
  
  @State var showView: Bool = false
  
  var body: some View {
    ZStack {
      VStack {
        Button("Button") {
          showView.toggle()
        }
        Spacer()
      }
      if showView {
        RoundedRectangle(cornerRadius: 30)
          .frame(height: UIScreen.main.bounds.height / 2)
//          .transition(.slide)
//          .transition(.move(edge: .bottom))
//          .transition(AnyTransition.opacity.animation(.easeOut))
//          .transition(AnyTransition.scale.animation(.easeInOut))
          .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom))).animation(Animation.easeInOut(duration: 5.0))
      }
    }
  }
}

struct TransitionBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TransitionBootcamp()
  }
}
