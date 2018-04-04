//
//  CashFactory.swift
//  StrategyPattern
//
//  Created by 童星 on 2018/3/29.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Cocoa

class CashFactory: NSObject {

    public class func createCashAccept(type: String) -> CashSuper?{
        var cs: CashSuper? = nil
        switch type {
        case "正常收费":
            cs = CashNurmal()
        case "满300返100":
            cs = CashReturn (moneyCondition: "300", moneyReturn: "100")
        case "打8折":
            cs = CashRebate (moneyRebate: "0.8")
        default:
            cs = nil
        }
        return cs
    }
}
