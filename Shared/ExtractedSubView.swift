//
//  ExtractedSubView.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 29/09/21.
//

import SwiftUI

struct ExtractedSubView: View {
  var body: some View {
    ZStack {
      Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)
      
      contentLayer
    }
  }
  
  var contentLayer: some View {
    HStack {
      MyItem(title: "Apples", count: 10, color: Color.red)
      MyItem(title: "Grapes", count: 20, color: Color.purple)
      MyItem(title: "Banana", count: 1, color: Color.yellow)
    }
  }
}

struct MyItem: View {
  let title: String
  let count: Int
  let color: Color
  
  var body: some View {
    VStack {
      Text("\(count)")
      Text(title)
    }
    .padding()
    .background(color)
    .cornerRadius(10)

  }
}


struct ExtractedSubView_Previews: PreviewProvider {
  static var previews: some View {
    ExtractedSubView()
  }
}
