//
//  CurrentModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation


struct CurrentModel: Decodable {
    let lastUpdatedEpoch: Int
    let lastUpdated: String
    let tempC: Double
    let tempF: Double
    let isDay: Int
    let condition: ConditionModel
    let windMph, windKph: Double
    let windDegree: Double
    let windDir: WindDir
    let pressureMB: Double
    let pressureIn, precipMm: Double
    let precipIn, humidity, cloud, feelslikeC: Double
    let feelslikeF: Double
    let visKM, visMiles, uv: Double
    let gustMph, gustKph: Double

    enum CodingKeys: String, CodingKey {
        case lastUpdatedEpoch = "last_updated_epoch"
        case lastUpdated = "last_updated"
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
        case visKM = "vis_km"
        case visMiles = "vis_miles"
        case uv
        case gustMph = "gust_mph"
        case gustKph = "gust_kph"
    }
    
    init(lastUpdatedEpoch: Int, lastUpdated: String, tempC: Double, tempF: Double, isDay: Int, condition: ConditionModel, windMph: Double, windKph: Double, windDegree: Double, windDir: WindDir, pressureMB: Double, pressureIn: Double, precipMm: Double, precipIn: Double, humidity: Double, cloud: Double, feelslikeC: Double, feelslikeF: Double, visKM: Double, visMiles: Double, uv: Double, gustMph: Double, gustKph: Double) {
        self.lastUpdatedEpoch = lastUpdatedEpoch
        self.lastUpdated = lastUpdated
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
        self.visKM = visKM
        self.visMiles = visMiles
        self.uv = uv
        self.gustMph = gustMph
        self.gustKph = gustKph
    }
        
    init() {
        self.lastUpdatedEpoch = 0
        self.lastUpdated = ""
        self.tempC = 0
        self.tempF = 0
        self.isDay = 0
        self.condition = ConditionModel.init()
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
        self.visKM = 0
        self.visMiles = 0
        self.uv = 0
        self.gustMph = 0
        self.gustKph = 0
    
    }
}



