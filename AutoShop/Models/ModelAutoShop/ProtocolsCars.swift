//
//  Protocol.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import UIKit


protocol Cars: class {
    var name: String {get}
    var description: String {get}
    var weels: Int {get}
    var color: Color {get}
    var priceCount: Double {get}
    var horseCount: Double {get}
    var maxSpeed: Int {get}
    var countryDev: CountryDevelop {get}
}



extension Cars {
    var vinNumber: Int {
        return Int.random(in: 1_000_000...5_000_000)
    }
    
    var avatarImage: UIImage {
        return UIImage(named: "\(name + color.rawValue)") ?? UIImage(named: "noImage")!
    }
}

enum Color: String {
    case white = "White"
    case black = "Black"
    case orange = "Orange"
}

enum Model: String {
    case kalina = "Калина"
    case priora = "Приора"
    case xray = "XRay"
    case vesta = "Веста"
    case mersedes = "Мерседес"
    case audi = "Ауди"
    case toyota = "Тойота"
}


enum CountryDevelop: String {
    case russian = "Россия"
    case german = "Германия"
    case japan = "Япония"
}
