//
//  Address.swift
//  Werkstuk_1
//
//  Created by student on 25/04/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class Address: NSObject {

    let street:String
    let number:Int
    let zipcode:Int
    let city:String
    let country:String
    let latitude:Double
    let longitude:Double
    
    override init() {
        self.street = ""
        self.number = 0
        self.zipcode = 0000
        self.city = ""
        self.country = ""
        self.latitude = 0.0
        self.longitude = 0.0
    }
    
    init(street:String, number:Int, zipcode:Int, city:String, country:String, latitude:Double, longitude:Double) {
        self.street = street
        self.number = number
        self.zipcode = zipcode
        self.city = city
        self.country = country
        self.latitude = latitude
        self.longitude = longitude
    }
}
