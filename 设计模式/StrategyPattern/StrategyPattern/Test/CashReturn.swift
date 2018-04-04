//
//  CashReturn.swift
//  StrategyPattern
//
//  Created by 童星 on 2018/3/29.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Cocoa

class CashReturn: CashSuper {
    var moneyCondition: Double = 0.0
    var moneyReturn: Double = 0.0
    init(moneyCondition: String, moneyReturn: String) {
        self.moneyCondition = Double(moneyCondition)!
        self.moneyReturn = Double(moneyReturn)!
    }
    
    override func acceptCash(money: Double) -> Double {
        var result: Double = money
        if money >= moneyCondition {
            result = money - Double(money / moneyCondition) * moneyReturn
        }
        return result
    }
}


