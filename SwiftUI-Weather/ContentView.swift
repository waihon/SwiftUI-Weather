//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Yew Wai Hon on 14/04/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
