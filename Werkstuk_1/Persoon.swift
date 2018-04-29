//
//  Persoon.swift
//  Werkstuk_1
//
//  Created by student on 25/04/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class Persoon: NSObject {
    
    
    let firstName:String
    let lastName:String
    let phone:Int
    let picture:String
    let address:Address
    
    override init() {
        self.firstName = ""
        self.lastName = ""
        self.phone = 0
        self.picture = ""
        self.address = Address()
    }
    
    init(firstName:String, lastName:String, phone:Int, picture:String, address:Address) {
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.picture = picture
        self.address = address
    }
    
}
