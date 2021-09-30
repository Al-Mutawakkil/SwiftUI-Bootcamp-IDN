//
//  ColorBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
      RoundedRectangle(cornerRadius: 80.0)
        .fill(
//          Color.pink
          Color(#colorLiteral(red: 1, green: 0.4639157653, blue: 0, alpha: 1))
        )
        .frame(width: 300, height: 300, alignment: .center)
//        .shadow(
//          color: .orange,
//          radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
//          x: 0.0,
//          y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
