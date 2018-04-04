//
//  ViewController.swift
//  AbstractFactoryPattern
//
//  Created by 童星 on 2018/4/4.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//  工厂方法

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let factory: LeifengFactory = UndergraduteFactory()
        let leifeng: LeiFeng = factory.createLeifeng()!
        leifeng.BuyRice()
        leifeng.Sweep()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

