//
//  ViewController.swift
//  GetLocationExample
//
//  Created by llc on 2023/10/3.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    /*
     
        How to obtain user's GeoLocation?
        step1: In the Info.plist, add a new row and select "Privacy Location When In Usage Description" then add a description
        step2: In the `ViewController` import Corelocation
        step3: Create UI elements and create Outlets
        step4: Implements CLLocationManagerDelegate in `ViewController`
        step5: Add a instance of CLLocationManager
        step6: In `viewDidLoad()` add delegate to self, desired accuracy and `requestWhenInUseAuthorization()`
        step7: Add `LocationManager` function of didUpdateLocations function
        step8: Add `LocationManager` functino of didFailWithError function
        step9: If you want to get address, write a function which uses CLGeocoder and get the reverse address
        step10: If you want to update the location automatically, then use `CLLocationManager.significantLocationChangeMonitoringAvailable()`
     
     */

    @IBOutlet weak var lblLatitude: UILabel!
    @IBOutlet weak var lblLongtitude: UILabel!
    let locationManager = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        startSignIfChangeLocationIsAllowed()
        
    }
    
    @IBAction func btnGetLocationAction(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func startSignIfChangeLocationIsAllowed() {
        if CLLocationManager.significantLocationChangeMonitoringAvailable() {
            locationManager.startMonitoringSignificantLocationChanges()
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        let lat = location.coordinate.latitude
        let lng = location.coordinate.longitude
        lblLatitude.text = "Latitude = \(lat)"
        lblLongtitude.text = "Longtitude = \(lng)"
        getLocationAddress(location: location)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error in getting locatino = \(error.localizedDescription)")
    }
    
    func getLocationAddress(location : CLLocation) {
        let clGeoCoder = CLGeocoder()
        // CLGeocodeCompletionHandler is a call back
        // hint: double click `CLGeocodeCompletionHandler` will a create closure for us
        clGeoCoder.reverseGeocodeLocation(location) { (clPlaceMarks, error) in
            if (error != nil) {
                print("Error in getting location from GeoCode \(error?.localizedDescription ?? "default error")")
                return
            }
            guard let place = clPlaceMarks?.last else {return}
            _ = ""
            print("\(String(describing: place.name))")
            print("\(String(describing: place.postalCode))")
            print("\(String(describing: place.locality))")
            print("\(String(describing: place.location))")
            print("\(String(describing: place.region))")
        }
    }
    
}

