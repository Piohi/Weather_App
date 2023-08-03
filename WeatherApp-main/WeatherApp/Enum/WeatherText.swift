//
//  WeatherText.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation

enum WeatherText: String, Decodable, Hashable {
    case clear = "Clear"
    case cloudy = "Cloudy"
    case heavyRain = "Heavy rain"
    case lightDrizzle = "Light drizzle"
    case lightRain = "Light rain"
    case lightRainShower = "Light rain shower"
    case moderateRain = "Moderate rain"
    case moderateRainAtTimes = "Moderate rain at times"
    case overcast = "Overcast"
    case partlyCloudy = "Partly cloudy"
    case patchyLightDrizzle = "Patchy light drizzle"
    case patchyRainPossible = "Patchy rain possible"
    case sunny = "Sunny"
    case patchyLightRainWithThunder = "Patchy light rain with thunder"
    case mist = "Mist"
}
