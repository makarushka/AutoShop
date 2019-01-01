//
//  AutoShop.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation
import UIKit

class JapanCars: Category {
    
    static var shared = JapanCars()
    
    var name: String = "Машины из Японии"
    
    var typeCategory: CountryDevelop = .japan
    var image: UIImage = UIImage(named: "JapanCars") ?? UIImage(named: "noImage")!
    
    private init() {}
    
}
