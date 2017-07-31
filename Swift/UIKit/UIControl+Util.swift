//
//  UIControl+Util.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIControl{
    
    open func addTouchUpInsideTarget(_ target: Any?, action: Selector){
        addTarget(target, action: action, for: UIControlEvents.touchUpInside)
    }
    
}
