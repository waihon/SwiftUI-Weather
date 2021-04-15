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
      LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
      VStack(spacing: 10) {
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
        .padding(.bottom, 40)
        
        HStack {
          WeatherDayView(dayOfWeek: "TUE",
                         imageName: "cloud.sun.fill",
                         temperature: 74)
          
          WeatherDayView(dayOfWeek: "WED",
                         imageName: "sun.max.fill",
                         temperature: 88)
          
          WeatherDayView(dayOfWeek: "THU",
                         imageName: "wind.snow",
                         temperature: 55)
          
          WeatherDayView(dayOfWeek: "FRI",
                         imageName: "sunset.fill",
                         temperature: 60)
          
          WeatherDayView(dayOfWeek: "SAT",
                         imageName: "snow",
                         temperature: 25)
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

struct WeatherDayView: View {
  
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack {
      Text(dayOfWeek)
        .font(.system(size: 16, weight: .medium, design: .default))
        .foregroundColor(.white)
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
      Text("\(temperature)º")
        .font(.system(size: 28, weight: .medium))
        .foregroundColor(.white)
    }
  }
}
