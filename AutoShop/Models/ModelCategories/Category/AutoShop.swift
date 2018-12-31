//
//  AutoShop.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation
import UIKit

class AutoShop: Category {
    
    static var shared = AutoShop()
    
    var name: String = "Автосалон"
    
    var typeCategory: Type = .cars
    var image: UIImage = UIImage(named: "AutoShop") ?? UIImage(named: "noImage")!
    
    private init() {}
    
}
