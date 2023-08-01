//
//  StandartTextModifire.swift
//  WeatherApp
//
//  Created by Anton Godunov on 20.07.2023.
//

import SwiftUI

struct StandartTextModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .fontWeight(.medium)
            .fontDesign(.rounded)
    }
}
