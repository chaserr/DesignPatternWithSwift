//
//  CashContext.swift
//  StrategyPattern
//
//  Created by 童星 on 2018/3/29.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Cocoa

class CashContext: NSObject {

    var cs: CashSuper? = nil
    // 通过简单工厂模式与策略模式的 context 结合， 将实例化具体策略的过程由客户端转移到 context 类中（这就是简单工厂的应用）
    init(type: String) {
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
    }
    //根据收费策略的不同，获得计算结果
    func getResult(money: Double) -> Double {
        return (cs?.acceptCash(money:money))!
    }
    
}
