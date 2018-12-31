//
//  FactoryCars.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation



class FactoryCars {
    static let shared = FactoryCars()
    
    func creatorCars(typeCars: Model, hourseCount: Double ,color: Color, maxSpeed: Int, priceCount: Double) -> Cars {
        switch typeCars {
        case .kalina:
            return Kalina(color: color, hourseCount: hourseCount, maxSpeed: maxSpeed, priceCount: priceCount)
        case .priora:
            return Priora(color: color, hourseCount: hourseCount, maxSpeed: maxSpeed, priceCount: priceCount)
        case .vesta:
            return Vesta(color: color, hourseCount: hourseCount, maxSpeed: maxSpeed, priceCount: priceCount)
        case .xray:
            return XRay(color: color, hourseCount: hourseCount, maxSpeed: maxSpeed, priceCount: priceCount)
        }
    }
    
    private init() {}
}
