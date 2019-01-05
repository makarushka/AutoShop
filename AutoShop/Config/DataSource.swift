//
//  DataSource.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation


class DataSource {
    static let shared = DataSource()
    
    var myCars: [Cars] = []
    var myRepair: [RepairProduct] = []
    var allCaregory: [Category] = []
    private init(){}
}
