//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Kirills Galenko on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Riga, Latvia")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium))
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("24°")
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                }
                .padding(.bottom, 40)
                
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
                    print("tapped")
                } label: {
                    Text("Change day time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium))
                        .cornerRadius(10)
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

