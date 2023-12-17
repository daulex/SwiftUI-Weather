//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Kirills Galenko on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight: Bool = false
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Riga, Latvia")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 24)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 21)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 20)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 32)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 21)
                }
                Spacer()
                Button{
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change day time")
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: isNight ? [.black, .gray] : [.blue, Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View{
        Text(cityName)
            .foregroundColor(.white)
            .font(.system(size: 32, weight: .medium))
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 8){
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 70))
        }
        .padding(.bottom, 40)
    }
}


