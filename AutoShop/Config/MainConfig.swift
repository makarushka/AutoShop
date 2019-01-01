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
    
    
    func createBaseConfig() {
       let kalina1 = FactoryCars.shared.creatorCars(typeCars: .kalina, hourseCount: 230, color: .orange, maxSpeed: 250, priceCount: 300_000)
        let vesta1 = FactoryCars.shared.creatorCars(typeCars: .vesta, hourseCount: 235, color: .white, maxSpeed: 230, priceCount: 400_000)
        let mersedes1 = FactoryCars.shared.creatorCars(typeCars: .mersedes, hourseCount: 350, color: .black, maxSpeed: 270, priceCount: 1_300_000)
        let audi1 = FactoryCars.shared.creatorCars(typeCars: .audi, hourseCount: 280, color: .orange, maxSpeed: 250, priceCount: 1_200_000)
        DataSource.shared.allCars.append(kalina1)
        DataSource.shared.allCars.append(vesta1)
        DataSource.shared.allCars.append(mersedes1)
        DataSource.shared.allCars.append(audi1)
        
        DataSource.shared.allCars.forEach() {print("Машина \($0.description), с цветом \($0.color.rawValue) относится к \($0.countryDev.rawValue) и имеет VIN номер - \($0.vinNumber)")
            print("\($0.color)")
        }
        
    }
    
    func createCategory() {
        let categoryAuto = RussianCars.shared
        let categoryRepair = GermanCars.shared
        DataSource.shared.allCaregory.append(categoryAuto)
        DataSource.shared.allCaregory.append(categoryRepair)
    }
    
    private init() {}
}
