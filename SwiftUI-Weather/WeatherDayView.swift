//
//  ViewWeatherDay.swift
//  SwiftUI-Weather
//
//  Created by Kirills Galenko on 16/12/2023.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 4){
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
        }
    }
}


#Preview {
    WeatherDayView(dayOfWeek: "TUE", 
                   imageName: "cloud.sun.fill",
                   temperature: 24)
}
