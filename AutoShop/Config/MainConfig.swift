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
    
    
    func createBaseData() {
        //MARK: Создаем авто
       let kalina1 = FactoryCars.shared.creatorCars(typeCars: .kalina, hourseCount: 230, color: .orange, maxSpeed: 250, priceCount: 300_000)
        let vesta1 = FactoryCars.shared.creatorCars(typeCars: .vesta, hourseCount: 235, color: .white, maxSpeed: 230, priceCount: 400_000)
        let mersedes1 = FactoryCars.shared.creatorCars(typeCars: .mersedes, hourseCount: 350, color: .black, maxSpeed: 270, priceCount: 1_300_000)
        let audi1 = FactoryCars.shared.creatorCars(typeCars: .audi, hourseCount: 280, color: .orange, maxSpeed: 250, priceCount: 1_200_000)
        let toyota1 = FactoryCars.shared.creatorCars(typeCars: .toyota, hourseCount: 230, color: .orange, maxSpeed: 250, priceCount: 1_200_300)
        
        //MARK: Создаем запчасти
        
        let repairAudi = CreatorRepairAudi()
        let repairVesta = CreatorRepairVesta()
        
        let doorAudi = repairAudi.createDoor(with: .orange)
        let fenderAudi = repairAudi.createFender(with: .white)
        
        let doorVesta = repairVesta.createDoor(with: .black)
        let fenderVesta = repairVesta.createFender(with: .orange)
        
        
        
        //MARK: Добавляем в массив данные машин
        DataSource.shared.myCars.append(kalina1)
        DataSource.shared.myCars.append(vesta1)
        DataSource.shared.myCars.append(mersedes1)
        DataSource.shared.myCars.append(audi1)
        DataSource.shared.myCars.append(toyota1)
        
        
        //MARK: Добавляем запчасти
        
        DataSource.shared.myRepair.append(doorVesta)
        DataSource.shared.myRepair.append(doorAudi)
        DataSource.shared.myRepair.append(fenderVesta)
        DataSource.shared.myRepair.append(fenderAudi
        )
        
        DataSource.shared.myCars.forEach() {print("Машина \($0.description), с цветом \($0.color.rawValue) относится к \($0.countryDev.rawValue) и имеет VIN номер - \($0.vinNumber)")
            print("\($0.color)")
        }
        
    }
    
    func createCategory() {
        let russianCars = RussianCars.shared
        let germanCars = GermanCars.shared
        let japanCars = JapanCars.shared
        DataSource.shared.allCaregory.append(russianCars)
        DataSource.shared.allCaregory.append(germanCars)
        DataSource.shared.allCaregory.append(japanCars)
    }
    
    private init() {}
}
