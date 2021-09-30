//
//  ScrollViewBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 28/09/21.
//

import SwiftUI

struct ScrollViewBootcamp: View {
  var body: some View {
    
    ScrollView(showsIndicators: false) {
      LazyVStack {
        ForEach(0..<20) { index in
          ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
              ForEach(0..<20) { index in
                RoundedRectangle(cornerRadius: 25.0)
                  .fill(Color.white)
                  .frame(width: 250, height: 150, alignment: .center)
                  .shadow(radius: 10)
                  .padding()
              }
            }
          })
        }
      }
    }
//    ScrollView(.horizontal, showsIndicators: false, content: {
//      HStack {
//        ForEach(1..<20) { index in
//          Rectangle()
//            .fill(Color.orange)
//            .frame(width: 200, height: 300)
//            .overlay(Text("\(index)")
//                      .foregroundColor(.white)
//                      .bold()
//                      .font(.title)
//            )
//        }
//      }.padding()
//    })
//
//    ScrollView(.vertical, showsIndicators: false, content: {
//      VStack {
//        ForEach(1..<20) { index in
//          Rectangle()
//            .fill(Color.orange)
//            .frame(width: 200, height: 300)
//            .overlay(Text("\(index)")
//                      .foregroundColor(.white)
//                      .bold()
//                      .font(.title)
//            )
//        }
//      }.padding()
//    })
  }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ScrollViewBootcamp()
  }
}
