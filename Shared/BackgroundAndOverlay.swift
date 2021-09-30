//
//  BackgroundAndOverlay.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 27/09/21.
//

import SwiftUI

struct BackgroundAndOverlay: View {
  var body: some View {
    Image(systemName: "heart.fill")
      .font(.system(size: 40))
      .foregroundColor(.pink)
      .background(
        Circle()
          .fill(
            LinearGradient(
              gradient: Gradient(colors: [Color.black, Color.black]),
              startPoint: .topLeading,
              endPoint: .bottomTrailing)
          )
          .frame(width: 100, height: 100, alignment: .center)
          .shadow(color: .orange, radius: 20, x: 1, y: 1)
          .overlay(Circle()
                    .fill(Color.black)
                    .frame(width: 35, height: 35, alignment: .center)
                    .shadow(color: .orange, radius: 20, x: 1, y: 1)
                    .overlay(
                      Text("1").foregroundColor(.pink).bold()
                    ),
                   alignment: .bottomTrailing
          )
      )
  }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundAndOverlay()
  }
}
