//
//  AllDataCategory.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import UIKit

class AllDataCategory: UICollectionViewController {

    var typeViewer: Type?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "ItemsCell", bundle: Bundle.main)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "cell")
        
        createUI()
    }
    
    
    func createUI() {
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    
        // Configure the cell
    
        return cell
    }

}
