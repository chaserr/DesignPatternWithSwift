//
//  main.swift
//  简单工厂模式
//
//  Created by 童星 on 2018/3/28.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Foundation

var ope: Operation = OperationFactory.createOperate("+")!
ope.numberA = 1
ope.numberB = 2
let result = ope.getResult()
print(result)
