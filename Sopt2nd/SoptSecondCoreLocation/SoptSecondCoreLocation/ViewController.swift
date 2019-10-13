//
//  ViewController.swift
//  SoptSecondCoreLocation
//
//  Created by Junhyeon on 2019/10/12.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    // MARK: - Property
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var latitudeAccuracyLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var longitudeAccuracyLabel: UILabel!
    
    @IBOutlet weak var changeSwitch: UISwitch!
    
    //  MARK: - Variable and Properties
    let locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.startUpdatingLocation()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        if CLLocationManager.locationServicesEnabled(){
            if CLLocationManager.authorizationStatus() == .denied || CLLocationManager.authorizationStatus() == .restricted {
                
                let alert = UIAlertController(title: "오류 발생", message: "위치서비스 기능이 꺼져있음", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
                self.changeSwitch.isOn = false
            } else {
                locationManager.desiredAccuracy = kCLLocationAccuracyBest
                locationManager.delegate = self
                locationManager.requestWhenInUseAuthorization()
            }
            
        } else {
            let alert = UIAlertController(title: "오류 발생", message: "위치서비스 제공 불가" , preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func isChangeSwitch(_ sender: AnyObject) {
        if sender.isOn {
            self.locationManager.startUpdatingLocation()
        }else{
            self.locationManager.stopUpdatingLocation()
        }
    }
    
}

extension ViewController : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]){
        
        let location: CLLocation = locations[locations.count-1]
        latitudeLabel.text = String(format: "%.6f", location.coordinate.latitude)
        latitudeAccuracyLabel.text = String(format: "%.6f", location.horizontalAccuracy)
        longitudeLabel.text = String(format: "%.6f", location.coordinate.longitude)
        longitudeAccuracyLabel.text = String(format: "%.6f", location.verticalAccuracy)
        
    }
}
