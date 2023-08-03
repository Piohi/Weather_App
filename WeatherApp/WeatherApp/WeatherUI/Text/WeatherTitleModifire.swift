//
//  WeatherTitleModiffire.swift
//  WeatherApp
//
//  Created by Anton Godunov on 20.07.2023.
//

import SwiftUI

struct WeatherTitleModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 100))
            .offset(x: 20.0)
            .foregroundColor(.white)
            .fontWeight(.medium)
            .fontDesign(.rounded)
    }
}
