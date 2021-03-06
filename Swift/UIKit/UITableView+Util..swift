//
//  UITableView1.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UITableView {

    /// Register UITableViewCell using class name
    /// identifier = nibName
    /// - Parameter nibName:
    ///
    /// - Parameter name:
    func register(_ nibName: String){
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, forCellReuseIdentifier: nibName)
    }
    
    /// Register UITableViewCell using class name
    /// identifier = nibName
    /// - Parameter nibName:
    ///
    /// - Parameter name:
    public func register<T: UITableViewCell>(nibClass name: T.Type) {
        let className = String(describing: name)
        let nib = UINib(nibName: className, bundle: Bundle.main)
        register(nib, forCellReuseIdentifier: String(describing: className))
    }
}
