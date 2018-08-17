//
//  UIViewController+Util.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit


extension UIViewController{
    
    open func push(_ viewController: UIViewController, animated: Bool){
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    open func pop(animated: Bool) -> UIViewController?{
        return navigationController?.popViewController(animated: animated)
    }
    
}
