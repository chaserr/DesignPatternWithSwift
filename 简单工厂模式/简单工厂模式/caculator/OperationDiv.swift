//
//  OperationDiv.swift
//  简单工厂
//
//  Created by 童星 on 2018/3/28.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import Foundation

class OperationDiv: Operation {

    override func getResult() -> Int {
        var result = 0
        result = numberA * numberB
        return result
    }
}
