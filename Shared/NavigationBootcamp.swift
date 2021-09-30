//
//  NavigationBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 30/09/21.
//

import SwiftUI

struct NavigationBootcamp: View {
  var body: some View {
    NavigationView {
      ScrollView {
        NavigationLink("Click Here", destination: MyOtherScreen())
        Text("Placeholder")
        Text("Placeholder")
        Text("Placeholder")
        Text("Placeholder")
      }
      .navigationTitle("All email")
      .navigationBarTitleDisplayMode(.large)
      .navigationBarItems(trailing: NavigationLink(
                            destination: MyOtherScreen(),
                            label: {
                              Image(systemName: "gear")
                            }))
    }
  }
}

struct MyOtherScreen: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ZStack {
      Color.green.edgesIgnoringSafeArea(.all)
        .navigationTitle("Green Screen")
        .navigationBarHidden(true)
      
      VStack {
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }, label: {
          Image(systemName: "xmark")
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(20)
        })
        
        NavigationLink("Click Here", destination: Text("BLADLADL"))
      }
    }
  }
}

struct NavigationBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBootcamp()
  }
}
