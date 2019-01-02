//
//  ProtocolUser.swift
//  AutoShop
//
//  Created by Yuriy on 02/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import Foundation



protocol User {
    var id: Int {get}
    var name: String {get}
    var lastName: String {get}
    var moneyCount: Int {get set}
    var levelCount: Int {get set}
}

extension User {
    var moneySpend: Int { //Сколько потрачено Юзером денег на покупку Машин
        var returnMoney: Double = 0.0
        DataSource.shared.myCars.forEach() {returnMoney += $0.priceCount}
        return Int(returnMoney)
    }
}


class MyUser: User {
    
    static let shared = MyUser()
    
    var id: Int = 1
    
    var name: String = "Юрий"
    
    var lastName: String = "Макаров"
    
    var moneyCount: Int = 1_000_000
    
    var levelCount: Int = 1
    
    private init() {}
    
}
