//
//  Person.swift
//  DecoratorPattern
//
//  Created by 童星 on 2018/4/3.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import UIKit

class Person: NSObject {

    let name: String?
    
    init(name: String) {
        self.name = name;
    }

    func Show() {
        print("装扮的\(String(describing: name!))");
    }
    
}
