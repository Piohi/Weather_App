//
//  UVIndexView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 26.07.2023.
//

import SwiftUI

struct UVIndexView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: SFSymbols.sun.rawValue)
                Text("UV INDEX")}
                .font(.footnote)
                .foregroundColor(.white)
//                .padding(.leading)
            

            
            Text("\(Int(viewModel.weather.current.uv))")
                .font(.title)
                .foregroundColor(.white.opacity(0.75))
                .bold()
                .padding(.leading, 8)
                .padding(.top, 6)
          switch viewModel.weather.current.uv {
            case 1,2 : Text("Low").font(.title)
                  .bold()
                  .foregroundColor(.white.opacity(0.75))
                  .padding(.leading, 8)
            case 3,4,5 : Text("Medium").font(.title)
                  .bold()
                  .foregroundColor(.white.opacity(0.75))
                  .padding(.leading, 8)
          case 6,7 : Text("Hight").font(.title)
                .bold()
                .foregroundColor(.white.opacity(0.75))
                .padding(.leading, 8)
          case 8,9,10 : Text("Very Hight").font(.title)
                .bold()
                .foregroundColor(.white.opacity(0.75))
                .padding(.leading, 8)
          case 11... : Text("Extreme").font(.title)
                .bold()
                .foregroundColor(.white.opacity(0.75))
                .padding(.leading, 8)
                
            default:
                Text("Unknown").font(.title)
                  .bold()
                  .foregroundColor(.white.opacity(0.75))
                  
          }
            
                
            ZStack(alignment: .leading) { Rectangle()
                    .frame(width: 150, height: 5)
                    .background(
                        LinearGradient(colors: [.green, .yellow, .orange, .purple],
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                    .cornerRadius(3)
                ZStack{ Circle()
                        .fill(.white)
                        .frame(width: 8)
                    Circle()
                        .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 8)}
                .offset(x: CGFloat(viewModel.weather.current.uv * 13))
                    
                
            }
            switch viewModel.weather.current.uv {
              case 1,2 : Text("Apply spf 15").font(.system(size: 12))
                    
                    .foregroundColor(.white.opacity(0.75))
              case 3,4,5 : Text("Apply spf 15+").foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 11))
                                Text("And wear protective clothing/hat")
                    .foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 11))
                   
                    .foregroundColor(.white.opacity(0.75))
            case 6,7 : Text("Apply spf 30+").foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 11))
                                Text("And wear protective clothing, hat, sunglasses")
                    .foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 9))
                    
            case 8,9,10 : Text("Apply spf 50").foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 11))
                                Text("And wear protective clothing, hat, sunglasses")
                    .foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 11))
            case 11... : Text("Apple spf 50+").foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 9))
                                Text("And wear protective clothing, hat, sunglasse. Avoid sun 10AM - 4PM")
                    .foregroundColor(.white.opacity(0.75))
                    .font(.system(size: 9))
              default:
                  Text("Unknown").font(.system(size: 12))
                    
                    .foregroundColor(.white.opacity(0.75))
              }

          
            }
        
        .frame(width: 170, height: 170)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .onAppear {
            viewModel.fetchCurrentWeather()
        }
        }
    }


struct UVIndexView_Previews: PreviewProvider {
    static var previews: some View {
        UVIndexView()
    }
}
