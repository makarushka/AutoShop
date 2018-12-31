//
//  ProtocolCategory.swift
//  AutoShop
//
//  Created by Yuriy on 30/12/2018.
//  Copyright © 2018 Yuriy. All rights reserved.
//

import Foundation
import UIKit


protocol Category {
    var name: String {get}
    var typeCategory: Type {get}
    var image: UIImage {get}
}

enum Type: String {
    case cars = "Автомагазин"
    case repairs = "Запчасти"
}
