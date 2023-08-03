//
//  WeekWeatherTextModifire.swift
//  WeatherApp
//
//  Created by Anton Godunov on 20.07.2023.
//

import SwiftUI

struct WeekWeatherTextModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .fontWeight(.medium)
            .fontDesign(.rounded)
            .font(.title2)
    }
}
