//
//  LocationModel.swift
//  WeatherApp
//
//  Created by Anton Godunov on 27.07.2023.
//

import Foundation


//v MARK: - Location
struct LocationModel: Decodable {
    let name, region, country: String
    let lat, lon: Double
    let tzID: String
    let localtimeEpoch: Int
    let localtime: String
    
    init(name: String, region: String, country: String, lat: Double, lon: Double, tzID: String, localtimeEpoch: Int, localtime: String) {
        self.name = name
        self.region = region
        self.country = country
        self.lat = lat
        self.lon = lon
        self.tzID = tzID
        self.localtimeEpoch = localtimeEpoch
        self.localtime = localtime
    }
    
    init(){
        self.name = ""
        self.region = ""
        self.country = ""
        self.lat = 0.0
        self.lon = 0.0
        self.tzID = ""
        self.localtimeEpoch = 0
        self.localtime = ""
    }

    enum CodingKeys: String, CodingKey {
        case name, region, country, lat, lon
        case tzID = "tz_id"
        case localtimeEpoch = "localtime_epoch"
        case localtime
    }
}
