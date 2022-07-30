//
//  CalcBrain.swift
//  Tipsy
//
//  Created by 陈勇 on 2022/7/30.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalcBrain {
    var calcData: CalcData?
    
    mutating func calcBill(billTotal: Float, tipPercent: Float, waiterNum: Int) {
        calcData = CalcData(billTotal, tipPercent, waiterNum)
        calcData!.tipPerPerson = billTotal * tipPercent / Float(waiterNum)
    }
    
    func getTipPerPerson() -> String {
        let tipString = String(format:"%.2f", calcData!.tipPerPerson!)
        return tipString
    }
    
    func getWaiterNum() -> String {
        let waitNumString = String(calcData!.waiterNum)
        return waitNumString
    }
    
    func getTipPercent() -> String {
        let tipPctString: String
        
        if calcData!.tipPercent == 0.0 {
            tipPctString = "0%"
        } else if calcData!.tipPercent == 0.1 {
            tipPctString = "10%"
        } else if calcData!.tipPercent == 0.2 {
            tipPctString = "20%"
        } else {
            tipPctString = "0%"
        }
        return tipPctString
    }
}
