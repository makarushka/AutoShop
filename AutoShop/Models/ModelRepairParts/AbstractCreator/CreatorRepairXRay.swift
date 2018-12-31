//
//  Creator.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class CreatorRepairXRay: CreteFactory {
    func createEngine() -> Engine {
        print("Создали новую запчасть на XRay")
        return EngineXRay()
    }
    
    func createTransmissions(type: TransmissionsType) -> Transmissions {
        print("Создали новую коробку на XRay")
        return TransXRay(type: type)
    }
}
