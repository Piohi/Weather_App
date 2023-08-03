//
//  WeatherCellView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import SwiftUI

struct WeatherCellView: View {
    
    let weather: ForecastDayModel
    
    private var image: String {
        switch weather.day.condition.text {
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
        case .mist:
            return "aqi.low"
            
        }
    }
    
    var body: some View {

        
        HStack{
            

                Text("\(weather.date.toDate(with: "yyyy-MM-dd").formatted(.dateTime.weekday()))")
                    .modifier(WeekWeatherTextModifire())

            Spacer()
            
            Image(systemName: image)
                .renderingMode(.original)
                .font(.system(size: 23))
            
            Spacer()
            
            HStack {
                Text("\(Int(weather.day.mintempC))")
                    .modifier(WeekWeatherTextModifire())
                    .foregroundColor(.white.opacity(0.75))
                
               
                
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: 120)
                        .background(.thinMaterial)
                    
                    Rectangle()
                        .frame(width: 75)
                        .background(
                            LinearGradient(colors: [.cyan, .yellow],
                                           startPoint: .leading,
                                           endPoint: .trailing)
                        )
                }
                .foregroundColor(.clear)
                .frame(height: 5)
                .cornerRadius(20)
                
                Text("\(Int(weather.day.maxtempC))")
                    .foregroundColor(.white)
                    .modifier(WeekWeatherTextModifire())
            }
        }
        Divider()
    }
}




