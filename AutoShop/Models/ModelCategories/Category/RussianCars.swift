//
//  AutoShop.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation
import UIKit

class RussianCars: Category {
    
    static var shared = RussianCars()
    
    var name: String = "Машины из России"
    
    var typeCategory: Type = .russianCars
    var image: UIImage = UIImage(named: "AutoShop") ?? UIImage(named: "noImage")!
    
    private init() {}
    
}
