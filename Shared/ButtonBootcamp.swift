//
//  ButtonBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 28/09/21.
//

import SwiftUI

struct ButtonBootcamp: View {
  @State var title: String = "This is My Title"
  var body: some View {
    VStack(spacing: 30) {
      Text(title)
      
      Button("Button") {
        self.title = "Button was Pressed"
      }
      
      Button(action: {
        self.title = "Mantap"
      }, label: {
        Text("Save".uppercased())
          .font(.headline)
          .fontWeight(.semibold)
          .foregroundColor(.white)
          .padding()
          .padding(.horizontal, 20)
          .background(Color.blue)
          .cornerRadius(20)
          .shadow(color: .blue, radius: 10, x: 0.0, y: 0.0)
      })
      
      Button(action: {}, label: {
        Circle()
          .fill(Color.white)
          .frame(width: 75, height: 75, alignment: .center)
          .shadow(radius: 10)
          .overlay(
            Image(systemName: "heart.fill")
              .foregroundColor(.blue)
              .font(.title))
      })
      
      Button(action: {}, label: {
        Text("Finish".uppercased())
          .font(.caption)
          .bold()
          .foregroundColor(.gray)
          .padding()
          .padding(.horizontal, 10)
          .background(
            Capsule()
              .stroke(Color.blue, lineWidth: 2)
          )
      })
    }
  }
}

struct ButtonBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ButtonBootcamp()
  }
}
