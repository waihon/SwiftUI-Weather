//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Yew Wai Hon on 16/04/2021.
//

import SwiftUI

struct WeatherButton: View {
  
  var title: String
  var textColor: Color
  var backgroundColor: Color
  
  var body: some View {
    Text(title)
      .frame(width: 280, height: 50)
      .background(backgroundColor)
      .foregroundColor(textColor)
      .font(.system(size: 20, weight: .bold, design: .default))
      .cornerRadius(10)
  }
}

struct WeatherButton_Previews: PreviewProvider {
  static var previews: some View {
    WeatherButton(title: "Change Day Time",
                  textColor: .blue,
                  backgroundColor: .white)  }
}
