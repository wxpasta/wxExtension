//
//  UIBarButtonItem-Extension.swift
//
//  Created by 巴糖 on 2017/5/1.
//

import UIKit

extension UIBarButtonItem {
    
    /* 便利构造函数: 
     1. convenience开头
     2. 在构造函数中必须明确调用一个设计的构造函数(self)
     */
    
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero, target : AnyObject? = nil, action : Selector )  {
        // 1.创建UIButton
        let btn = UIButton()
        
        // 2.设置btn的图片
        btn.setImage(UIImage(named: imageName), for: UIControlState())
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        // 3.设置btn的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        btn.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        
        // 4.创建UIBarButtonItem
        self.init(customView : btn)
    }
    
}
