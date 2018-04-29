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
    
    override init() {
        self.street = ""
        self.number = 0
        self.zipcode = 0000
        self.city = ""
        self.country = ""
    }
    
    init(street:String, number:Int, zipcode:Int, city:String, country:String) {
        self.street = street
        self.number = number
        self.zipcode = zipcode
        self.city = city
        self.country = country
    }
}
