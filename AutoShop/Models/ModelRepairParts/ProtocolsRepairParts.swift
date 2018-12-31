//
//  Protocols.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


protocol Engine {
    var partNumber: Int {get}
    var forModel: Model {get}
    func startEngine()
    func stopEngine()
    init ()
}

protocol Transmissions {
    var partNumber: Int {get}
    var type: TransmissionsType {get}
    var forModel: Model {get}
    init (type: TransmissionsType)
}

protocol CreteFactory {
    func createEngine() -> Engine
    func createTransmissions(type: TransmissionsType) -> Transmissions
}
enum TransmissionsType {
    case avt, manual, robot
}
