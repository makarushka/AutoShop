//
//  Protocol.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


protocol Cars: class {
    var name: String {get}
    var weels: Int {get}
    var color: Color {get}
    var priceCount: Double {get}
    var horseCount: Double {get}
    var maxSpeed: Int {get}
}

enum Color: String {
    case white = "Белый"
    case black = "Черный"
    case orange = "Оранжевый"
}

enum Model: String {
    case kalina = "Калина"
    case priora = "Приора"
    case xray = "XRay"
    case vesta = "Веста"
}
