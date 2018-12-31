//
//  TableCategoryVC.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import UIKit

class TableCategoryVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}




extension TableCategoryVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MainConfig.shared.allCategories.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     let allCategory = MainConfig.shared.allCategories
     cell.textLabel?.text = allCategory[indexPath.row].name
     return cell
     }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow
        if segue.identifier == "data" {
            if let vc = segue.destination as? AllDataCategory {
            vc.typeViewer = MainConfig.shared.allCategories[indexPath!.row].typeCategory
            }
        }
    }
    
}
