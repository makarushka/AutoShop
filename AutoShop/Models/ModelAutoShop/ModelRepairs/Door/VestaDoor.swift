//
//  Audi.swift
//  AutoShop
//
//  Created by Yuriy on 05/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import Foundation


class VestaDoor: Door {
    var title: String = "Дверь"
    
    var description: String = "Дверь для автомобиля Веста"
    
    var priceCount: Int = 1000
    
    var color: Color
    
    var toModel: Model = .vesta
    
    required init(with color: Color) {
        self.color = color
    }
}
