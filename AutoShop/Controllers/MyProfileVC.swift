//
//  MyProfileVC.swift
//  AutoShop
//
//  Created by Yuriy on 03/01/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import UIKit

class MyProfileVC: UIViewController {

    @IBOutlet weak var myFullName: UILabel! {
        didSet {
            myFullName.text = MyUser.shared.name + " " + MyUser.shared.lastName
        }
    }
    @IBOutlet weak var myMoney: UILabel! {
        didSet {
            myMoney.text = "У меня денег: " + String(MyUser.shared.moneyCount)
        }
    }
    @IBOutlet weak var moneySpent: UILabel! {
        didSet {
            moneySpent.text = "Потратил я: " + String(MyUser.shared.moneySpend)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
