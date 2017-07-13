//
//  UIViewController+Util.swift
//  vshiMessge
//
//  Created by 0547 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit


extension UIViewController{
    
    
    /// push 带动画
    ///
    /// - Parameter viewController:
    func push(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}
