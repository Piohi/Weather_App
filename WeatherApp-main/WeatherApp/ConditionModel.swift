//
//  ConditionModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 27.07.2023.
//

import Foundation


// MARK: - Condition
struct ConditionModel: Decodable, Hashable {
    let icon: String
    let text: WeatherText
    let code: Int
    
    init(text: WeatherText, icon: String, code: Int) {
        self.text = text
        self.icon = icon
        self.code = code
    }
    
    init() {
        self.text = .clear
        self.icon = ""
        self.code = 0
    }
}
