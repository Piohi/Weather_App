//
//  APIService.swift
//  WeatherApp
//
//  Created by Anton Godunov on 27.07.2023.
//

import Foundation
import SwiftyJSON
import MapKit


protocol APIServiceProtocol {
    
    ///метод принимает страну или координаты, или город, а так же клоужер который возвращает либо ошибку либо модель с погодой
    func getForecast(
        for location: String,
        completionHandler: @escaping (Result<WeatherModel, APIError>) -> ())
}


final class APIService: APIServiceProtocol {
    
    private let baseURL = "https://api.weatherapi.com/v1"
    private let apiKey = "352b4afdba374bb7b5a102209232507"
    
    func getForecast(for location: String, completionHandler: @escaping (Result<WeatherModel, APIError>) -> ()
    ) {
        guard let url = URL(string: "\(baseURL)/forecast.json?key=\(apiKey)&q=\(location)&days=7&aqi=no&alerts=yes") else {
            completionHandler(.failure(.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = APIMethod.get.rawValue
        
        DispatchQueue.global(qos: .background).async {
            URLSession.shared.dataTask(with: request) { data, responce, error in
                if error != nil {
                    completionHandler(.failure(.badRequest))
                }
                guard let data else {
                    completionHandler(.failure(.noData))
                    return
                }
                
                print(JSON(data))
                
                do{
                    let object = try JSONDecoder().decode(WeatherModel.self, from: data)
                    completionHandler(.success(object))
                } catch let error {
                    completionHandler(.failure(.decodingError(error.localizedDescription)))
                }
                
            }
            .resume()
            
            
        }
        
    }
    
    
}
