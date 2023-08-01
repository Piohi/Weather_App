//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation

// MARK: - Welcome
struct WeatherModel: Decodable {
    let location: LocationModel
    let current: CurrentModel
    let forecast: ForecastModel
    
    init(location: LocationModel,
         current: CurrentModel,
         forecast: ForecastModel) {
        self.location = location
        self.current = current
        self.forecast = forecast
    }
    
    init() {
        self.location = .init()
        self.current = .init()
        self.forecast = .init(forecastday: [])
    }
}










