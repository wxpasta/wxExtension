//
//  UIBarButtonItem+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    
    /// 自定义 UIBarButtonItem
    ///
    /// - Parameters:
    ///   - imageName: 图片名
    ///   - highImageName: 高亮图片名
    ///   - target: target.
    ///   - action: selector to run when button is tapped.
    convenience init(imageName: String,
                     highImageName: String = "",
                     _ target: Any? = nil,
                     action: Selector? = nil) {
        
        let btn = UIButton(type: UIButton.ButtonType.custom)
        btn.setImage(UIImage(named: imageName), for: UIControl.State.normal)
        
        if highImageName.count > 0 {
            btn.setImage(UIImage(named: highImageName), for: UIControl.State.highlighted)
        }
        var rect = btn.frame
        rect.size = (btn.currentImage?.size)!
        
        if target != nil || action != nil {
            btn.addTarget(target, action: action!, for: UIControl.Event.touchUpInside)
        }
        self.init(customView: btn)
    }
    
    
    /// Add Target to UIBarButtonItem
    ///
    /// - Parameters:
    ///   - target: target.
    ///   - action: selector to run when button is tapped.
    public func addTargetForAction(_ target: AnyObject, action: Selector) {
        self.target = target
        self.action = action
    }
    
    
    /* 便利构造函数:
     1. convenience开头
     2. 在构造函数中必须明确调用一个设计的构造函数(self)
     */
    
    convenience init(imageName : String,
                     highImageName : String = "",
                     size : CGSize = CGSize.zero,
                     target : AnyObject? = nil,
                     action : Selector )  {
        // 1.创建UIButton
        let btn = UIButton()
        
        // 2.设置btn的图片
        btn.setImage(UIImage(named: imageName), for: UIControl.State())
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        // 3.设置btn的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        btn.addTarget(target, action: action, for: UIControl.Event.touchUpInside)
        
        // 4.创建UIBarButtonItem
        self.init(customView : btn)
    }
}
