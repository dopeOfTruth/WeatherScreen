//
//  ViewController.swift
//  WeatherScreen
//
//  Created by Михаил Красильник on 12.03.2021.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var feelsLikeTemoeratureLabel: UILabel!
    @IBOutlet var IconWeatherImageView: UIImageView!
    
    @IBAction func searchCityData(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
    




























    
    
//    lazy var locationManager: CLLocationManager = {
//        let lm = CLLocationManager()
//        lm.delegate = self
//        lm.desiredAccuracy = kCLLocationAccuracyKilometer
//        lm.requestWhenInUseAuthorization()
//        return lm
//    }()
//
//    let weatherManager = NetworkWeatherManager()
//
//    @IBAction func searchCityData(_ sender: UIButton) {
//
//        presentSearchAlertController(title: "Enter City Name", message: nil, style: .alert) { [unowned self] (city) in
//            self.weatherManager.featchCurrentWeather(forRequestType: .cityName(city: city))
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        weatherManager.onCompletion = { [weak self] currentWeather in
//            guard let self = self else { return }
//            self.updateInterfaceWith(currentWeather: currentWeather)
//        }
//
//        weatherManager.featchCurrentWeather(forRequestType: .cityName(city: "Omsk"))
//
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager.requestLocation()
//        }
//    }
//
//    func updateInterfaceWith(currentWeather: CurrentWeather) {
//        DispatchQueue.main.async {
//            self.cityNameLabel.text = currentWeather.cityName
//            self.temperatureLabel.text = "\(currentWeather.temperatureString) °C"
//            self.feelsLikeTemoeratureLabel.text = "Feels like \(currentWeather.feelsLikeTemperatureString) °C"
//            self.IconWeatherImageView.image = UIImage(systemName: currentWeather.systemIconName)
//            self.IconWeatherImageView.tintColor = #colorLiteral(red: 0.8109379411, green: 0.7808286548, blue: 0.6091378331, alpha: 1)
//        }
//    }
//
//}
//
//
//extension ViewController {
//
//    func presentSearchAlertController(title: String?, message: String?, style: UIAlertController.Style, completionHandler: @escaping (String) -> Void) {
//
//        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
//
//        alert.addTextField { (textField) in
//            textField.placeholder = "City name"
//        }
//
//        let searchAction = UIAlertAction(title: "Search", style: .default) { (action) in
//            let textField = alert.textFields?.first
//            guard let cityName = textField?.text else { return }
//            if cityName != "" {
////                let city = cityName.split(separator: " ").joined(separator: "%20")
//                completionHandler(cityName)
//            }
//        }
//
//        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
//
//        alert.addAction(searchAction)
//        alert.addAction(cancelAction)
//
//        present(alert, animated: true)
//    }
//}
//
//extension ViewController: CLLocationManagerDelegate {
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let location = locations.last else { return }
//
//        let latitude = location.coordinate.latitude
//        let longitude = location.coordinate.longitude
//
//        weatherManager.featchCurrentWeather(forRequestType: .coordinate(latitude: latitude, longitude: longitude))
//    }
//
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print(error.localizedDescription)
//    }
//
//}
