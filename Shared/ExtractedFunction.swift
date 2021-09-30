//
//  ExtractedFunction.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 29/09/21.
//

import SwiftUI

struct ExtractedFunction: View {
  @State var backgroundColor: Color = Color.orange
  
  var body: some View {
    ZStack {
      backgroundColor.edgesIgnoringSafeArea(.all)
      
      contentLayer
    }
  }
  var contentLayer: some View {
    VStack(spacing: 20) {
      Text("Title")
        .font(.largeTitle)
      Button(action: {
        buttonPressed()
      }, label: {
        Text("Press Me")
          .font(.headline)
          .foregroundColor(.white)
          .padding()
          .background(Color.black)
          .cornerRadius(40)
      })
    }
  }
  
  func buttonPressed() {
    backgroundColor = Color.yellow
  }
}

struct ExtractedFunction_Previews: PreviewProvider {
  static var previews: some View {
    ExtractedFunction()
  }
}
