//
//  EngineVesta.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class EngineVesta: Engine {
    
    var partNumber: Int
    
    var forModel: Model = .vesta
    
    func startEngine() {
        print("Старт двигателя у автомобиля \(forModel.rawValue)")
    }
    
    func stopEngine() {
        print("Стоп двигателя у автомобиля \(forModel.rawValue)")
    }
    
    required init() {
        self.partNumber = Int.random(in: 100...300)
    }
    
    
    
}
