//
//  CurrentWeather.swift
//  WeatherScreen
//
//  Created by Михаил Красильник on 13.03.2021.
//

import Foundation

struct CurrentWeather {
    
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        String(format: "%.0f", temperature)
    }
    
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
        String(format: "%.0f", feelsLikeTemperature)
    }
    
    let conditionCode: Int
    
    var systemIconName: String {
        
        switch conditionCode {
        case 200...232: return "cloud.bolt.rain.fill"
        case 300...321: return "cloud.drizzle.fill"
        case 500...531: return "cloud.rain.fill"
        case 600...622: return "cloud.snow.fill"
        case 701...781: return "smoke.fill"
        case 800: return "sun.min.fill"
        case 801...804: return "cloud.fill"
        default: return "nosign"
        }
    }
    
    init?(currentWeatherDate: CurrentWeatherData) {
        cityName = currentWeatherDate.name
        temperature = currentWeatherDate.main.temp
        feelsLikeTemperature = currentWeatherDate.main.feelsLike
        conditionCode = currentWeatherDate.weather.first!.id
    }
}
