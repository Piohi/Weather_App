
struct CurrentModel: Decodable {
    let lastUpdatedEpoch: Int
    let lastUpdated: String
    let tempC: Int
    let tempF: Double
    let isDay: Int
    let condition: ConditionModel
    let windMph, windKph: Double
    let windDegree: Int
    let windDir: WindDir
    let pressureMB: Int
    let pressureIn, precipMm: Double
    let precipIn, humidity, cloud, feelslikeC: Int
    let feelslikeF: Double
    let visKM, visMiles, uv: Int
    let gustMph, gustKph: Double

    enum CodingKeys: String, CodingKey {
        case lastUpdatedEpoch = "last_updated_epoch"
        case lastUpdated = "last_updated"
        case tempC = "temp_c"
        case tempF = "temp_f"
        case isDay = "is_day"
        case condition
        case windMph = "wind_mph"
        case windKph = "wind_kph"
        case windDegree = "wind_degree"
        case windDir = "wind_dir"
        case pressureMB = "pressure_mb"
        case pressureIn = "pressure_in"
        case precipMm = "precip_mm"
        case precipIn = "precip_in"
        case humidity, cloud
        case feelslikeC = "feelslike_c"
        case feelslikeF = "feelslike_f"
        case visKM = "vis_km"
        case visMiles = "vis_miles"
        case uv
        case gustMph = "gust_mph"
        case gustKph = "gust_kph"
    }
}


enum WindDir: String, Decodable {
    case nw = "NW"
    case s = "S"
    case ssw = "SSW"
    case sw = "SW"
    case w = "W"
    case wnw = "WNW"
    case wsw = "WSW"
}
