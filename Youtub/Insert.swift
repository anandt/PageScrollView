//
//  Insert.swift
//  Youtub
//
//  Created by Anand tellabati on 10/09/16.
//  Copyright © 2016 Anand tellabati. All rights reserved.
//

import Foundation

class Insert {
    
    var name :String!
    var lat:Double!
    var long:Double!
    var adrress:String!
    
    init(name:String,latitude:Double,longitude:Double,adress:String){
        
        self.name = name
        self.lat = latitude
        self.long = longitude
        self.adrress = adress
    }
    
    static func dummyData() -> [Insert] {
        
        return [
            
            Insert(name: "Madhapur", latitude: 17.4483, longitude: 78.3915, adress: "madhapur, hyderabad, andhra pradesh, india")
            ,
            Insert(name: "KPHB", latitude: 17.4833, longitude: 78.3896, adress: "kphb road, kukatpally housing board colony, hyderabad, telangana, india")
            ,
            Insert(name: "Ameerpet", latitude: 17.4348, longitude: 78.448, adress: "ameerpet, hyderabad, telangana, india")
            ,
            Insert(name: "Pragathi Nagar", latitude: 17.393, longitude: 78.5423, adress: "pragathi nagar, hyderabad, telangana, india")
            ,
            Insert(name: "BHEL", latitude: 17.4927, longitude: 78.2989, adress: "bharat heavy electricals limited, hyderabad, telangana, india")
            ,
            Insert(name: "Nizampet", latitude: 17.5165, longitude: 78.3766, adress: "nizampet, hyderabad, telangana, india")
        ]
    }
}