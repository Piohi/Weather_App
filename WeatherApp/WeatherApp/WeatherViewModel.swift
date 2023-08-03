//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 27.07.2023.
//

import Foundation


final class WeatherViewModel: ObservableObject {
    @Published var weather = WeatherModel.init()
    
    
    private let service = APIService()
    
    func fetchCurrentWeather() {
        service.getForecast(for: "London") { result in
            switch result {
            case .success(let success):
                DispatchQueue.main.async {
                    self.weather = success
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
