//
//  SafeAreaBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 28/09/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
  var body: some View {
    ScrollView {
      VStack {
        Text("Text Goes Here")
          .font(.largeTitle)
          .frame(maxWidth: .infinity, alignment: .leading)
        
        ForEach(0..<10) { index in
          RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
            .frame(height: 150)
            .shadow(radius: 10)
            .padding()
        }
      }
    }.background(Color.red.ignoresSafeArea())
  }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    SafeAreaBootcamp()
  }
}
