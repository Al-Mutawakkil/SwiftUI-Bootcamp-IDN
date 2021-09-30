//
//  ShapeBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct ShapeBootcamp: View {
  var body: some View {
    //        Circle()
    //        Ellipse()
    //        Capsule()
    //        Rectangle()
    RoundedRectangle(cornerRadius: 200.0)
      //          .fill(Color.orange)
      //          .foregroundColor(.orange)
      //          .stroke()
      .stroke(Color.orange, lineWidth: 5.0)
      .frame(width: 300, height: 300, alignment: .center)
    
  }
}

struct ShapeBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ShapeBootcamp()
  }
}
