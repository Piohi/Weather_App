//
//  WindDir.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation

enum WindDir: String, Decodable, Hashable {
    case nw = "NW"
        case s = "S"
        case ssw = "SSW"
        case sw = "SW"
        case w = "W"
        case wnw = "WNW"
        case wsw = "WSW"
        case ese = "ESE"
        case e = "E"
        case n = "N"
        case ne = "NE"
        case ene = "ENE"
        case se = "SE"
        case sse = "SSE"
        case nnw = "NNW"
        case nne = "NNE"
}
