//
//  DetailViewController.swift
//  Werkstuk_1
//
//  Created by student on 30/04/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DetailViewController: UIViewController {

    var item = Persoon()
    
    @IBOutlet weak var firstname: UILabel!
    @IBOutlet weak var lastname: UILabel!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var zipcode: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.firstname.text = item.firstName
        self.lastname.text = item.lastName
        self.street.text = item.address.street
        self.number.text = String(item.address.number)
        self.zipcode.text = String(item.address.zipcode)
        self.city.text = item.address.city
        self.country.text = item.address.country
        self.image.image = UIImage(named: item.picture)
        
        let location = CLLocation(latitude: item.address.latitude, longitude: item.address.longitude)
        let radius: CLLocationDistance = 1000
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, radius, radius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(location: location)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ImageView"
        {
            let vc = segue.destination as! ImageViewController
            vc.image = self.item.picture
        }
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
