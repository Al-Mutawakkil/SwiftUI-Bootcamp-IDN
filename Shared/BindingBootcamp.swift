//
//  BindingBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 29/09/21.
//

import SwiftUI

struct BindingBootcamp: View {
  @State var backgroundColor: Color = Color.orange
  @State var mTitle: String = "Title"
  
  var body: some View {
    ZStack {
      backgroundColor.edgesIgnoringSafeArea(.all)
      
      VStack {
        Text(mTitle)
          .foregroundColor(.white)
        ButtonView(backgroundColor: $backgroundColor, mTitle: $mTitle)
      }
    }
  }
}

struct ButtonView: View {
  @Binding var backgroundColor: Color
  @Binding var mTitle: String
  @State var buttonColor: Color = Color.black
  
  var body: some View {
    Button(action: {
      backgroundColor = Color.black
      mTitle = "New Title"
      buttonColor = Color.orange
    }, label: {
      Text("Button")
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(buttonColor)
        .cornerRadius(10)
    })
  }
}

struct BindingBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    BindingBootcamp()
  }
}
