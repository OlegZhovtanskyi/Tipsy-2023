//
//  TipsBrain.swift
//  Tipsy
//
//  Created by Oleg Zhovtanskyi on 08/06/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

struct Brain {
//    var buttons: [UIButton]
    var billValue = 0.0
    var tipPercent = 0.0
    var numOfPeople = 0.0
    var labelText = ""
    var settingLabel = ""
    
    func strOpt(stringValue: String?) -> Double {
        if let value = stringValue?.dropLast(), let doubleValue = Double(value) {
            let decimalValue = doubleValue / 100.0
            return decimalValue // Output: 0.2
        } else {
            return 0
        }
    }
}
