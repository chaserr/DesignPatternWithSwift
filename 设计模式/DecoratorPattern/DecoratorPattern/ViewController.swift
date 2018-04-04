//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by 童星 on 2018/4/3.
//  Copyright © 2018年 cn.timeface. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tx: Person = Person (name: "童星")
        let dtx: Finery = TShirts(component: tx)
        let kk: Finery = BigTrouser(component: tx)
        let pqx: Finery = Sneakers(component: tx)
        dtx.Show()
        kk.Show()
        pqx.Show()
        tx.Show()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

