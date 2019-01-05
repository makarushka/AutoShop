//
//  AudiFender.swift
//  AutoShop
//
//  Created by Yuriy on 05/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import Foundation


class VestaFender: Fender {
    
    var title: String = "Крыло"
    
    var description: String = "Крыло для авто Веста"
    
    var priceCount: Int = 2500
    
    var color: Color
    
    var toModel: Model = .vesta
    
    required init(with color: Color) {
        self.color = color
    }

}
