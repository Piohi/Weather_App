//
//  CurrentLocation.swift
//  WeatherApp
//
//  Created by Anton Godunov on 13.07.2023.
//

import SwiftUI
import CoreLocation

struct CurrentLocationView: View {
    
    
    @StateObject private var viewModel = WeatherViewModel()
    
    
    
    
    var body: some View {
        
        
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                //MARK: - TopBar
                HStack {
                    Image(systemName: SFSymbols.location.rawValue)
                        .font(.title)
                    
                    Text(viewModel.weather.location.region)
                        .modifier(StandartTextModifire())
                    
                    Spacer()
                    
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: SFSymbols.menu.rawValue)
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
                .padding(.vertical, 8)
                
                //MARK: - Current weather
                VStack {
                    Text("\(Int(viewModel.weather.current.tempC))˚")
                        .modifier(WeatherTitleModifire())
                    
                    Text(viewModel.weather.current.condition.text.rawValue)
                        .modifier(StandartTextModifire())
                    
                }
                
                VStack(spacing: 16) {
                    //MARK: - Hourly weather
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 25) {
                                if let day = viewModel.weather.forecast.forecastday.first?.hour {
                                    ForEach(day, id: \.self) { hour in
                                        if hour.time.toDate(with: "yyyy-MM-dd HH:mm") >= Date() {
                                            HourWeatherCellView(weather: hour)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                
                
                VStack(spacing: 16) {
                    //MARK: - Weekly weather
                    VStack {
                       
                            VStack(alignment: .center, spacing: 25) {
                                
                                ForEach(viewModel.weather.forecast.forecastday, id: \.self) { weather in
                                    WeatherCellView(weather: weather)
//                                        Divider()
                                
                                
                            }
                        }
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                

//
//
//                HStack{
//                    HumidityView()
//                    Spacer()
//                    VisabilityView()
//
//
//                }
//                .padding(.top, 8)
//
//                HStack{
//                   UVIndexView()
//                    Spacer()
//                    MapView(coordinate: CLLocationCoordinate2D(latitude: viewModel.weather.location.lat , longitude: viewModel.weather.location.lon))
//
//                }
//                .padding(.top, 8)
//

                }
            .frame(maxWidth: .infinity,
                    maxHeight: .infinity)
            .padding()
            .edgesIgnoringSafeArea(.bottom)
            .background(
                Image.background
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            )
            .onAppear {
                viewModel.fetchCurrentWeather()


            }
                
                              
                
            }
        }
    }



struct CurrentLocationView_Preview: PreviewProvider {
    static var previews: some View {
        CurrentLocationView()
    }
}
