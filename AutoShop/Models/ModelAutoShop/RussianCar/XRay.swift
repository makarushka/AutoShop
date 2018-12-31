//
//  XRay.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import UIKit



class XRay: Cars {
    var category: Type = .russianCars
    
    var countryDev: CountryDevelop = .russian
    
    var avatarImage: UIImage = UIImage(named: "XRay") ?? UIImage(named: "noImage")!
    
    var name: String = "XRay"
    
    var weels: Int = 4
    
    var color: Color
    
    var horseCount: Double
    
    var maxSpeed: Int
    
    var priceCount: Double
    
    required init(color: Color, hourseCount: Double, maxSpeed: Int, priceCount: Double) {
        self.color = color
        self.maxSpeed = maxSpeed
        self.horseCount = hourseCount
        self.priceCount = priceCount
    }
}
