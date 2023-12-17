//
//  SwiftUIView.swift
//  SwiftUI-Weather
//
//  Created by Kirills Galenko on 16/12/2023.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color? = .blue
    var backgroundColor: Color? = .white
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .medium))
            .cornerRadius(10)
        
    }
}

#Preview {
    WeatherButton(title: "Button")
}
