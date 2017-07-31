//
//  UIBarButtonItem+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(imageName: String,highImageName: String = "", _ target: Any? = nil, action: Selector? = nil) {
        
        let btn = UIButton(type: UIButtonType.custom)
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        
        if highImageName.characters.count > 0 {
            btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        }
        var rect = btn.frame
        rect.size = (btn.currentImage?.size)!
        
        if target != nil || action != nil {
            btn.addTarget(target, action: action!, for: UIControlEvents.touchUpInside)
        }
        self.init(customView: btn)
    }
}
