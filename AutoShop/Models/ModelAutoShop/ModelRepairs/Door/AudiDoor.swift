//
//  Audi.swift
//  AutoShop
//
//  Created by Yuriy on 05/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import Foundation


class AudiDoor: Door {
    var title: String = "Дверь"
    
    var description: String = "Дверь для автомобиля Audi"
    
    var priceCount: Int = 15000
    
    var color: Color
    
    var toModel: Model = .audi
    
    required init(with color: Color) {
        self.color = color
    }
}
