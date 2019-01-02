//
//  AllDataCategory.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import UIKit

class AllDataCategory: UICollectionViewController {

    var countryDevelop: CountryDevelop?
    var dataFirst = [Cars]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataFirst = DataSource.shared.myCars.filter() {$0.countryDev == self.countryDevelop}

        let nib = UINib(nibName: "ItemsCell", bundle: Bundle.main)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "cell")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataFirst.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ItemsCell
    
        cell?.avatarImage.image = self.dataFirst[indexPath.row].avatarImage
        cell?.textLabel.text = self.dataFirst[indexPath.row].description
        cell?.priceCount.text = String(self.dataFirst[indexPath.row].priceCount)
    
        return cell!
    }

}
