//
//  CalcData.swift
//  Tipsy
//
//  Created by 陈勇 on 2022/7/30.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalcData {
    let billTotal: Float
    let tipPercent: Float
    let waiterNum: Int
    var tipPerPerson: Float?

    init(_ billTotal: Float, _ tipPercent: Float, _ waiterNum: Int) {
        self.billTotal = billTotal
        self.tipPercent = tipPercent
        self.waiterNum = waiterNum
    }
    
}
