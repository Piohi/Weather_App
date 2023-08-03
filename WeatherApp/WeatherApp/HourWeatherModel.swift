//
//  HourWeatherModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation

// MARK: - Hour
struct HourWeatherModel: Decodable, Hashable {
    let timeEpoch: Int
    let time: String
    let tempC, tempF: Double
    let isDay: Double
    let condition: ConditionModel
    let windMph, windKph: Double
    let windDegree: Double
    let windDir: WindDir?
    let pressureMB: Double
    let pressureIn, precipMm, precipIn: Double
    let humidity, cloud: Double
    let feelslikeC, feelslikeF, windchillC, windchillF: Double
    let heatindexC, heatindexF, dewpointC, dewpointF: Double
    let willItRain, chanceOfRain, willItSnow, chanceOfSnow: Double
    let visKM: Double
    let visMiles: Double
    let gustMph, gustKph: Double
    let uv: Double

    init(timeEpoch: Int, time: String, tempC: Double, tempF: Double, isDay: Double, condition: ConditionModel, windMph: Double, windKph: Double, windDegree: Double, windDir: WindDir?, pressureMB: Double, pressureIn: Double, precipMm: Double, precipIn: Double, humidity: Double, cloud: Double, feelslikeC: Double, feelslikeF: Double, windchillC: Double, windchillF: Double, heatindexC: Double, heatindexF: Double, dewpointC: Double, dewpointF: Double, willItRain: Double, chanceOfRain: Double, willItSnow: Double, chanceOfSnow: Double, visKM: Double, visMiles: Double, gustMph: Double, gustKph: Double, uv: Double) {
        self.timeEpoch = timeEpoch
        self.time = time
        self.tempC = tempC
        self.tempF = tempF
        self.isDay = isDay
        self.condition = condition
        self.windMph = windMph
        self.windKph = windKph
        self.windDegree = windDegree
        self.windDir = windDir
        self.pressureMB = pressureMB
        self.pressureIn = pressureIn
        self.precipMm = precipMm
        self.precipIn = precipIn
        self.humidity = humidity
        self.cloud = cloud
        self.feelslikeC = feelslikeC
        self.feelslikeF = feelslikeF
        self.windchillC = windchillC
        self.windchillF = windchillF
        self.heatindexC = heatindexC
        self.heatindexF = heatindexF
        self.dewpointC = dewpointC
        self.dewpointF = dewpointF
        self.willItRain = willItRain
        self.chanceOfRain = chanceOfRain
        self.willItSnow = willItSnow
        self.chanceOfSnow = chanceOfSnow
        self.visKM = visKM
        self.visMiles = visMiles
        self.gustMph = gustMph
        self.gustKph = gustKph
        self.uv = uv
    }
    
    init() {
        self.timeEpoch = 0
        self.time = ""
        self.tempC = 0
        self.tempF = 0
        self.isDay = 0
        self.condition = .init()
        self.windMph = 0
        self.windKph = 0
        self.windDegree = 0
        self.windDir = .nw
        self.pressureMB = 0
        self.pressureIn = 0
        self.precipMm = 0
        self.precipIn = 0
        self.humidity = 0
        self.cloud = 0
        self.feelslikeC = 0
        self.feelslikeF = 0
        self.windchillC = 0
        self.windchillF = 0
        self.heatindexC = 0
        self.heatindexF = 0
        self.dewpointC = 0
        self.dewpointF = 0
        self.willItRain = 0
        self.chanceOfRain = 0
        self.willItSnow = 0
        self.chanceOfSnow = 0
        self.visKM = 0
        self.visMiles = 0
        self.gustMph = 0
        self.gustKph = 0
        self.uv = 0
    }
    
    enum CodingKeys: String, CodingKey {
        case timeEpoch = "time_epoch"
        case time
        case tempC = "temp_c"
        case tempF = "temp_f"
        case isDay = "is_day"
        case condition
        case windMph = "wind_mph"
        case windKph = "wind_kph"
        case windDegree = "wind_degree"
        case windDir = "wind_dir"
        case pressureMB = "pressure_mb"
        case pressureIn = "pressure_in"
        case precipMm = "precip_mm"
        case precipIn = "precip_in"
        case humidity, cloud
        case feelslikeC = "feelslike_c"
        case feelslikeF = "feelslike_f"
        case windchillC = "windchill_c"
        case windchillF = "windchill_f"
        case heatindexC = "heatindex_c"
        case heatindexF = "heatindex_f"
        case dewpointC = "dewpoint_c"
        case dewpointF = "dewpoint_f"
        case willItRain = "will_it_rain"
        case chanceOfRain = "chance_of_rain"
        case willItSnow = "will_it_snow"
        case chanceOfSnow = "chance_of_snow"
        case visKM = "vis_km"
        case visMiles = "vis_miles"
        case gustMph = "gust_mph"
        case gustKph = "gust_kph"
        case uv
    }
}
