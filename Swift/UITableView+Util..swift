//
//  UITableView1.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UITableView {

    func register(_ nibName: String){
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, forCellReuseIdentifier: nibName)
    }
}
