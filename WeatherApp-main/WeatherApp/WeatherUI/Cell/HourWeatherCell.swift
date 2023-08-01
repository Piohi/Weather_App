//
//  HourWeatherCellView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 20.07.2023.
//

import SwiftUI

struct HourWeatherCellView: View {
    
    let weather: HourWeatherModel
    
    private var image: String {
        switch weather.condition.text {
        case .clear:
          return  "sun.max.fill"
        case .cloudy:
            return "cloud.fill"
        case .heavyRain:
            return "cloud.heavyrain.fill"
        case .lightDrizzle:
            return  "cloud.drizzle.fill"
        case .lightRain:
            return  "cloud.rain.fill"
        case .lightRainShower:
            return  "cloud.rain.fill"
        case .moderateRain:
            return  "cloud.rain.fill"
        case .moderateRainAtTimes:
            return  "cloud.rain.fill"
        case .overcast:
            return  "cloud.sun.fill"
        case .partlyCloudy:
            return  "cloud.sun.fill"
        case .patchyLightDrizzle:
            return  "cloud.drizzle.fill"
        case .patchyRainPossible:
            return  "cloud.sun.rain.fill"
        case .sunny:
            return "sun.max.fill"
        case .patchyLightRainWithThunder:
            return  "cloud.bolt.rain.fill"
            
        }
    }
    
    var body: some View {
        VStack {
            Text(weather.time.toDate(with: "yyyy-MM-dd HH:mm").formatted(.dateTime.hour()))
                .modifier(StandartTextModifire())
            
            Image(systemName: image)
                .renderingMode(.original)
                .frame(width: 25, height: 25)
            
            Text("\(Int(weather.tempC))˚")
                .modifier(StandartTextModifire())
                .offset(x: 5.0)
        }
    }
}
