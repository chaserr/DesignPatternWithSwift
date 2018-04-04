//
//  CashRebate.swift
//  StrategyPattern
//
//  Created by 童星 on 2018/3/29.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Cocoa

class CashRebate: CashSuper {
    var moneyRebate: Double = 1
    init(moneyRebate: String) {
        self.moneyRebate = Double(moneyRebate)!
        super.init()
    }
    
    override func acceptCash(money: Double) -> Double {
        return money * moneyRebate
    }
}
