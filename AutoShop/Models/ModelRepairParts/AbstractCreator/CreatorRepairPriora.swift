//
//  Creator.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class CreatorRepairPriora: CreteFactory {
    func createEngine() -> Engine {
        print("Создали новую запчасть на Приору")
        return EngineKalina()
    }
    
    func createTransmissions(type: TransmissionsType) -> Transmissions {
        print("Создали новую коробку на Приору")
        return TransKalina(type: type)
    }
}
