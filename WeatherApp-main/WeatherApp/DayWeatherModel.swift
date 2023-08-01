//
//  DayWeatherModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation

// MARK: - Day
struct DayWeatherModel: Decodable, Hashable {
    let maxtempC, maxtempF, mintempC, mintempF: Double
    let avgtempC, avgtempF, maxwindMph, maxwindKph: Double
    let totalprecipMm, totalprecipIn: Double
    let totalsnowCM: Double
    let avgvisKM: Double
    let avgvisMiles, avghumidity, dailyWillItRain, dailyChanceOfRain: Double
    let dailyWillItSnow, dailyChanceOfSnow: Double
    let condition: ConditionModel
    let uv: Double

    enum CodingKeys: String, CodingKey {
        case maxtempC = "maxtemp_c"
        case maxtempF = "maxtemp_f"
        case mintempC = "mintemp_c"
        case mintempF = "mintemp_f"
        case avgtempC = "avgtemp_c"
        case avgtempF = "avgtemp_f"
        case maxwindMph = "maxwind_mph"
        case maxwindKph = "maxwind_kph"
        case totalprecipMm = "totalprecip_mm"
        case totalprecipIn = "totalprecip_in"
        case totalsnowCM = "totalsnow_cm"
        case avgvisKM = "avgvis_km"
        case avgvisMiles = "avgvis_miles"
        case avghumidity
        case dailyWillItRain = "daily_will_it_rain"
        case dailyChanceOfRain = "daily_chance_of_rain"
        case dailyWillItSnow = "daily_will_it_snow"
        case dailyChanceOfSnow = "daily_chance_of_snow"
        case condition, uv
    }
    
    init(maxtempC: Double, maxtempF: Double, mintempC: Double, mintempF: Double, avgtempC: Double, avgtempF: Double, maxwindMph: Double, maxwindKph: Double, totalprecipMm: Double, totalprecipIn: Double, totalsnowCM: Double, avgvisKM: Double, avgvisMiles: Double, avghumidity: Double, dailyWillItRain: Double, dailyChanceOfRain: Double, dailyWillItSnow: Double, dailyChanceOfSnow: Double, condition: ConditionModel, uv: Double) {
        self.maxtempC = maxtempC
        self.maxtempF = maxtempF
        self.mintempC = mintempC
        self.mintempF = mintempF
        self.avgtempC = avgtempC
        self.avgtempF = avgtempF
        self.maxwindMph = maxwindMph
        self.maxwindKph = maxwindKph
        self.totalprecipMm = totalprecipMm
        self.totalprecipIn = totalprecipIn
        self.totalsnowCM = totalsnowCM
        self.avgvisKM = avgvisKM
        self.avgvisMiles = avgvisMiles
        self.avghumidity = avghumidity
        self.dailyWillItRain = dailyWillItRain
        self.dailyChanceOfRain = dailyChanceOfRain
        self.dailyWillItSnow = dailyWillItSnow
        self.dailyChanceOfSnow = dailyChanceOfSnow
        self.condition = condition
        self.uv = uv
    }
    
    init() {
        self.maxtempC = 0
        self.maxtempF = 0
        self.mintempC = 0
        self.mintempF = 0
        self.avgtempC = 0
        self.avgtempF = 0
        self.maxwindMph = 0
        self.maxwindKph = 0
        self.totalprecipMm = 0
        self.totalprecipIn = 0
        self.totalsnowCM = 0
        self.avgvisKM = 0
        self.avgvisMiles = 0
        self.avghumidity = 0
        self.dailyWillItRain = 0
        self.dailyChanceOfRain = 0
        self.dailyWillItSnow = 0
        self.dailyChanceOfSnow = 0
        self.condition = .init()
        self.uv = 0
    }
}
