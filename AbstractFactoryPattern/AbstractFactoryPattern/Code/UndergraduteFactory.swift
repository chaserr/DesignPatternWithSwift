//
//  UndergraduteFactory.swift
//  AbstractFactoryPattern
//
//  Created by 童星 on 2018/4/4.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import UIKit

class UndergraduteFactory: LeifengFactory {
    override func createLeifeng() -> LeiFeng? {
        return UnderGraduate()
    }
}
