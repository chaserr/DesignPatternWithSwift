//
//  ViewController.swift
//  StrategyPattern
//
//  Created by 童星 on 2018/3/28.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Cocoa


/// 策略模式
class ViewController: NSViewController {

    var total: Double = 0.0
    var totalPrice: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 简单工厂方法
        var csuper: CashSuper = CashFactory.createCashAccept(type: "打8折")!
        var result = csuper.acceptCash(money: 1000)
        print("单价：\(1000) 数量：\(1)  总计：\(result)")
        
        // 策略模式
        let strategy = "满300返100"
        let cc: CashContext? = CashContext (type: strategy)
        result = (cc?.getResult(money: 1000))!
        print("单价：\(1000) 数量：\(1)  总计：\(result)")

        
        /* 简单工厂模式，需要让客户端认识两个类，CashSuper和 CashFactory
         *而策略模式和简单工厂模式结合，只需要认识一个类，耦合性更低
         */
    
    }

    
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

