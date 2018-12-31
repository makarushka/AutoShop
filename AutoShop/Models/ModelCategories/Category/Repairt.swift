//
//  Repairt.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation
import UIKit

class Repairts: Category {
    
    static var shared = Repairts()
    
    var name: String = "Запчасти"
    
    var typeCategory: Type = .repairs
    var image: UIImage = UIImage(named: "Repairts") ?? UIImage(named: "noImage")!
    
    private init() {}
    
}
