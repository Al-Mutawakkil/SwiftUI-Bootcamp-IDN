//
//  AlertBootcamp.swift
//  SwiftUI-Bootcamp-IDN (iOS)
//
//  Created by Numair on 30/09/21.
//

import SwiftUI

struct AlertBootcamp: View {
  
  @State var showAlert: Bool = false
  @State var backgroundColor: Color = Color.orange
  
  var body: some View {
    ZStack {
      backgroundColor.edgesIgnoringSafeArea(.all)
      Button("Click Me") {
        showAlert.toggle()
      }
      .foregroundColor(.white)
      .alert(isPresented: $showAlert, content: {
  //      Alert(title: Text("HAIIII"))
  //      Alert(
  //        title: Text("Halo"),
  //        message: Text("Nama Kamu Siapa"),
  //        dismissButton: .destructive(Text("No")))
        Alert(
          title: Text("WOIIIIIII"),
          message: Text("MANTAP GES"),
          primaryButton: .default(Text("Yes"), action: {
            backgroundColor = Color.blue
          }),
          secondaryButton: .default(Text("NO")))
        
    })
    }
  }
}

struct AlertBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AlertBootcamp()
  }
}
