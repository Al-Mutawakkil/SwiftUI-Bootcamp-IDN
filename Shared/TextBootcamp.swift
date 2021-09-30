//
//  TextBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct TextBootcamp: View {
  var body: some View {
    Text("Bootcamp IDN, Disini Kita belajar tentang IOS untuk pemula".capitalized)
      //      .font(.largeTitle)
      //      .bold()
      ////      .underline()
      //      .underline(true, color: Color.blue)
      //      .italic()
      ////      .strikethrough()
      //      .strikethrough(true, color: Color.red)
      //      .font(.system(size: 30, weight: .semibold, design: .rounded))
      //      .baselineOffset(-50.0)
      .multilineTextAlignment(.leading)
      .foregroundColor(.red)
//      .background(Color.blue)
      .frame(width: 200, height: 200, alignment: .center)
  }
}

struct TextBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TextBootcamp()
  }
}
