//
//  Creator.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class CreatorRepairVesta: CreteFactory {
    func createEngine() -> Engine {
        print("Создали новую запчасть на Весту")
        return EngineVesta()
    }
    
    func createTransmissions(type: TransmissionsType) -> Transmissions {
        print("Создали новую коробку на Весту")
        return TransVesta(type: type)
    }
}
