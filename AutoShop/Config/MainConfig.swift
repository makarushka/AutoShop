//
//  MainConfig.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation



class MainConfig {
    static let shared = MainConfig()
    
    var allCategories = [Category]()
    
    func createBaseConfig() {
        let autoShop = AutoShop.shared
        let repairts = Repairts.shared
        self.allCategories.append(autoShop)
        self.allCategories.append(repairts)
    }
    
    private init() {}
}
