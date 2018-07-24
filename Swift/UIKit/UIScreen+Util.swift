//
//  UIScreen+Util.swift
//
//
//  Created by 巴糖 on 2018/07/23.
//  Copyright © 2018年 巴糖. All rights reserved.
//

import UIKit

extension UIScreen{
    
    public static var mainBounds: CGRect{
        return UIScreen.main.bounds
    }
}

extension UIScreen{
    
    public static var mainSize: CGSize {
        return UIScreen.main.bounds.size
    }
    
    public static var mainOrigin: CGPoint{
        return UIScreen.main.bounds.origin
    }
}

extension UIScreen{
    
    public static var mainWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    public static var mainHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
}
