//
//  ReapirProtocol.swift
//  AutoShop
//
//  Created by Yuriy on 05/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import Foundation

protocol RepairProduct {
    var title: String {get}
    var description: String {get}
    var priceCount: Int {get}
}

//MARK: Протокол описывает "Дверь"

protocol Door: RepairProduct {
    var color: Color {get}
    var toModel: Model {get}
    init(with color: Color)
}

//MARK: Протокол описывает "Крылья"

protocol Fender: RepairProduct {
    var color: Color {get}
    var toModel: Model {get}
    init(with color: Color)
}

//MARK: Абстрактный протокол для создания запчастей

protocol Creator: class {
    func createDoor(with color: Color) -> Door
    func createFender(with color: Color) -> Fender
}


//MARK: Далее создаем детали для Типа авто

class CreatorRepairAudi: Creator {
    func createDoor(with color: Color) -> Door {
        print("Создали дверь для Audi")
        return AudiDoor(with: color)
    }
    
    func createFender(with color: Color) -> Fender {
        print("Создали крыло для Audi")
        return AudiFender(with: color)
    }
}

class CreatorRepairVesta: Creator {
    func createDoor(with color: Color) -> Door {
        print("Создали дверь для Vesta")
        return VestaDoor(with: color)
    }
    
    func createFender(with color: Color) -> Fender {
        print("Создали крыло для Vesta")
        return VestaFender(with: color)
    }
}
