//
//  ContextMenuBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 30/09/21.
//

import SwiftUI

struct ContextMenuBootcamp: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10.0) {
      Image(systemName: "house.fill")
        .font(.title)
      Text("SwiftUI Bootcamp IDN")
        .font(.headline)
      Text("How to use Context Menu")
        .font(.subheadline)
    }
    .padding(30)
    .foregroundColor(.white)
    .background(Color.blue)
    .cornerRadius(30)
    .contextMenu(ContextMenu(menuItems: {
      Label("Share Post", systemImage: "square.and.arrow.up")
      Label("Report Post", systemImage: "bolt")
      Label("Like Post", systemImage: "heart.fill")
    }))
  }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ContextMenuBootcamp()
  }
}
