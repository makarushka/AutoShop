//
//  AutoShop.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation
import UIKit

class GermanCars: Category {
    
    static var shared = GermanCars()
    
    var name: String = "Машины из Германии"
    
    var typeCategory: CountryDevelop = .german
    var image: UIImage = UIImage(named: "GermanCars") ?? UIImage(named: "noImage")!
    
    private init() {}
    
}
