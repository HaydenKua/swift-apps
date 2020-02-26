//
//  ViewController.swift
//  MusicByLocation
//
//  Created by Hayden Kua on 26/02/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    let geocoder = CLGeocoder()
    
    @IBOutlet var musicRecommendations: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
    }

    @IBAction func findMusic(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let firstLocation = locations.first {
            geocoder.reverseGeocodeLocation(firstLocation, completionHandler: { (placemarks, error) in
                if error != nil {
                    self.musicRecommendations.text = "Could not perform lookup of location for latitude: \(firstLocation.coordinate.latitude.description)"
                } else {
                    self.musicRecommendations.text = "\(placemarks?[0].country ?? "Unknown")\n\(placemarks?[0].locality ?? "Unknown")\n\(placemarks?[0].subLocality ?? "Unknown")\n\(placemarks?[0].thoroughfare ?? "Unknown")"
                }
                
            })
            musicRecommendations.text = firstLocation.coordinate.latitude.description
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        musicRecommendations.text = "Could not access user's location. Error: \(error.localizedDescription)"
    }
    
}

