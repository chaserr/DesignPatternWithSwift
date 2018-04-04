//
//  Finery.swift
//  DecoratorPattern
//
//  Created by 童星 on 2018/4/3.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import UIKit

class Finery: Person {
    let component: Person
    init(component: Person) {
        self.component = component
        super.init(name: component.name!)
    }
    
    override func Show() {
        component.Show()
    }
    
}
