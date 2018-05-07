//
//  MapViewController.swift
//  Werkstuk_1
//
//  Created by ontlener on 04/05/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    var persons: Array<Persoon> = Array()
    var locationManager: CLLocationManager!
    var currentLocation: CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.persons = InitData.getData()
        
        if(CLLocationManager.locationServicesEnabled()) {
            self.locationManager = CLLocationManager()
            self.locationManager.delegate = self as? CLLocationManagerDelegate
            self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
            self.locationManager.requestAlwaysAuthorization()
            self.locationManager.requestWhenInUseAuthorization()
            self.locationManager.startUpdatingLocation()
            currentLocation = locationManager.location
            if(currentLocation != nil) {
                let radius: CLLocationDistance = 20000
                let center = CLLocationCoordinate2D(latitude: self.currentLocation.coordinate.latitude, longitude: self.currentLocation.coordinate.longitude)
                let region = MKCoordinateRegionMakeWithDistance(center, radius, radius)
                self.mapView.setRegion(region, animated: true)
            }
            
        }
        
        for person in persons {
            let annotation = MKPointAnnotation()
            annotation.title = person.firstName + " " + person.lastName
            annotation.coordinate = CLLocationCoordinate2D(latitude: person.address.latitude, longitude: person.address.longitude)
            self.mapView.addAnnotation(annotation)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
