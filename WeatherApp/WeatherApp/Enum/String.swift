//
//  String.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import Foundation


import Foundation

extension String {
    func toDate(with formatt: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatt
        let date = dateFormatter.date(from: self)
        return date ?? Date()
    }
}
