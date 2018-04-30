//
//  InitData.swift
//  Werkstuk_1
//
//  Created by student on 29/04/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class InitData: NSObject {

    class func getData() -> Array<Persoon> {
        
        var persons = [Persoon]()
        persons.insert(Persoon(firstName: "Kenny", lastName: "Maeyer", phone: 0478552368, picture: "kenny.jpg", address: Address(street: "Rue Des Freres", number: 22, zipcode: 7830, city: "Thoricourt", country: "Belgium", latitude: 50.60757, longitude: 3.944965)), at:0)
        persons.append(Persoon(firstName: "Charlotte", lastName: "Tiaux", phone: 0478552159, picture: "charlotte.jpg", address: Address(street: "Arthur Puesstraat", number: 18, zipcode: 1502, city: "Lembeek", country: "Belgium", latitude: 50.715261, longitude: 4.219323)))
        persons.append(Persoon(firstName: "Trinity", lastName: "Garriax", phone: 0478552160, picture: "trinity.jpg", address: Address(street: "Rue Des Betteraves", number: 32, zipcode: 1700, city: "Anderlecht", country: "Belgium", latitude: 50.824763, longitude: 4.262548)))
        persons.append(Persoon(firstName: "Angel", lastName: "Smet", phone: 0478552150, picture: "angel.jpg", address: Address(street: "Uilenspiegelpark", number: 41, zipcode: 1731, city: "Asse", country: "Belgium", latitude: 50.901965, longitude: 4.292375)))
        persons.append(Persoon(firstName: "Julius", lastName: "Ceasar", phone: 0478552159, picture: "julius.jpg", address: Address(street: "Zennestraat", number: 6, zipcode: 1651, city: "Beersel", country: "Belgium", latitude: 50.764127, longitude: 4.281859)))
        persons.append(Persoon(firstName: "Marie", lastName: "Charles", phone: 0478555559, picture: "marie.jpg", address: Address(street: "Rue de la dendre", number: 8, zipcode: 7940, city: "Brugelette", country: "Belgium", latitude: 50.598284, longitude: 3.853585)))
        
        return persons
    }
}
