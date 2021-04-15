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
      VStack {
        Text("Cupertino, CA")
          .font(.system(size: 32, weight: .medium, design: .default))
          .foregroundColor(.white)
          .padding()
        
        VStack(spacing: 10) {
          Image(systemName: "cloud.sun.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
          Text("76º")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
        }
        
        HStack {
          VStack {
            Text("TUE")
              .font(.system(size: 16, weight: .medium, design: .default))
              .foregroundColor(.white)
            Image(systemName: "cloud.sun.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 40, height: 40)
            Text("76º")
              .font(.system(size: 28, weight: .medium))
              .foregroundColor(.white)
          }
        }
        
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
