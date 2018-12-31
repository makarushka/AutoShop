//
//  TransKalina.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class TransKalina: Transmissions {
    var partNumber: Int
    
    var type: TransmissionsType
    
    var forModel: Model = .kalina
    
    required init(type: TransmissionsType) {
        self.type = type
        partNumber = Int.random(in: 200...5000)
    }
    
    
}
