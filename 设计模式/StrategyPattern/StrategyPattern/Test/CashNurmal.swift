//
//  CashNurmal.swift
//  StrategyPattern
//
//  Created by 童星 on 2018/3/29.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Cocoa

class CashNurmal: CashSuper {
    override func acceptCash(money: Double) -> Double {
        return money
    }
}
