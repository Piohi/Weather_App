//
//  ForecastModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation


// MARK: - Forecast
struct ForecastModel: Decodable, Hashable {
    let forecastday: [ForecastDayModel]
}
