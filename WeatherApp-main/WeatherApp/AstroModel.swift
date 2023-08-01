//
//  AstroModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation

// MARK: - Astro
struct AstroModel: Decodable, Hashable {
    let sunrise, sunset, moonrise, moonset: String
    let moonPhase, moonIllumination: String
    let isMoonUp, isSunUp: Int?

    enum CodingKeys: String, CodingKey {
        case sunrise, sunset, moonrise, moonset
        case moonPhase = "moon_phase"
        case moonIllumination = "moon_illumination"
        case isMoonUp = "is_moon_up"
        case isSunUp = "is_sun_up"
    }
    
    init(sunrise: String, sunset: String, moonrise: String, moonset: String, moonPhase: String, moonIllumination: String, isMoonUp: Int?, isSunUp: Int?) {
        self.sunrise = sunrise
        self.sunset = sunset
        self.moonrise = moonrise
        self.moonset = moonset
        self.moonPhase = moonPhase
        self.moonIllumination = moonIllumination
        self.isMoonUp = isSunUp
        self.isSunUp = isSunUp
    }
    
    init() {
        self.sunrise = ""
        self.sunset = ""
        self.moonrise = ""
        self.moonset = ""
        self.moonPhase = ""
        self.moonIllumination = ""
        self.isMoonUp = 0
        self.isSunUp = 0
    }
}
