//
//  AudiFender.swift
//  AutoShop
//
//  Created by Yuriy on 05/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import Foundation


class AudiFender: Fender {
    
    var title: String = "Крыло"
    
    var description: String = "Крыло для авто Audi"
    
    var priceCount: Int = 25000
    
    var color: Color
    
    var toModel: Model = .audi
    
    required init(with color: Color) {
        self.color = color
    }

}
