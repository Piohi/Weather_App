//
//  ForecastDayModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation



// MARK: - Forecastday

struct ForecastDayModel: Decodable, Hashable {
    let date: String
    let dateEpoch: Double
    let day: DayWeatherModel
    let astro: AstroModel
    let hour: [HourWeatherModel]

    init(date: String, dateEpoch: Double, day: DayWeatherModel, astro: AstroModel, hour: [HourWeatherModel]) {
        self.date = date
        self.dateEpoch = dateEpoch
        self.day = day
        self.astro = astro
        self.hour = hour
    }
 
    init() {
        self.date = ""
        self.dateEpoch = 0
        self.day = .init()
        self.astro = .init()
        self.hour = []
    }
    
    
    enum CodingKeys: String, CodingKey {
        case date
        case dateEpoch = "date_epoch"
        case day, astro, hour
    }
    

}
