//
//  PopoverBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 30/09/21.
//

import SwiftUI

struct PopoverBootcamp: View {
  
  @State var showNewScreen: Bool = false
  
  var body: some View {
    ZStack {
      Color.orange.edgesIgnoringSafeArea(.all)
      
      VStack {
        Button("Button") {
          showNewScreen.toggle()
        }
        .font(.largeTitle)
        
        Spacer()
      }
//      // cara 1 untuk popver - Sheet
//      .sheet(isPresented: $showNewScreen, content: {
//        NewScreen()
//      })

      //  cara 2 untuk popover - Transition
//      if showNewScreen {
//        NewScreen(showNewScreen: $showNewScreen)
//          .padding(.top, 50)
//          .transition(.move(edge: .bottom))
//          .animation(.spring())
//      }
      
      //  cara 2 untuk popover - Animation Offset
      
      NewScreen(showNewScreen: $showNewScreen)
        .padding(.top, 100)
        .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
        .animation(.spring())
    }
  }
}

struct NewScreen: View {
  
//  @Environment(\.presentationMode) var presentationMode
  @Binding var showNewScreen: Bool
  
  var body: some View {
    ZStack(alignment: .topLeading) {
      Color.purple.edgesIgnoringSafeArea(.all)
      
      Button(action: {
//        presentationMode.wrappedValue.dismiss()
        showNewScreen.toggle()
      }, label: {
        Image(systemName: "xmark")
          .foregroundColor(.white)
          .font(.largeTitle)
          .padding(20)
      })
    }
  }
}

struct PopoverBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    PopoverBootcamp()
  }
}
