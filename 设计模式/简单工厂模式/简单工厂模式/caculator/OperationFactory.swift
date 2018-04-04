//
//  OperationFactory.swift
//  简单工厂
//
//  Created by 童星 on 2018/3/28.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//


/// 工厂类
class OperationFactory {
    class func createOperate(_ operate: String) -> Operation? {
        var ope: Operation? = nil
        switch operate {
        case "+":
            ope = OperationAdd()
        case "-":
            ope = OperationSub()
        case "*":
            ope = OperationMul()
        case "/":
            ope = OperationDiv()
        default:
            ope = nil
        }
        return ope
    }
}
