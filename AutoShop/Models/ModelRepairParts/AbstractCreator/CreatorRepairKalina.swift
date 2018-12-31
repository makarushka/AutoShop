//
//  Creator.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class CreatorRepairKalina: CreteFactory {
    func createEngine() -> Engine {
        print("Создали новую запчасть на Калину")
        return EngineKalina()
    }
    
    func createTransmissions(type: TransmissionsType) -> Transmissions {
        print("Создали новую коробку на Калину")
        return TransKalina(type: type)
    }
}
