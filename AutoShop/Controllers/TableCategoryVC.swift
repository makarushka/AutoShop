//
//  TableCategoryVC.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import UIKit

class TableCategoryVC: UITableViewController {

}




extension TableCategoryVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataSource.shared.allCaregory.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     let allCategory = DataSource.shared.allCaregory
     cell.textLabel?.text = allCategory[indexPath.row].name
     return cell
     }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow
        if segue.identifier == "data" {
            if let vc = segue.destination as? AllDataCategory {
                vc.countryDevelop = DataSource.shared.allCaregory[(indexPath?.row)!].typeCategory
            }
        }
    }
    
}
