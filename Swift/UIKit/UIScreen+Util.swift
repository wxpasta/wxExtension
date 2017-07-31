//
//  UIScreen+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIScreen{
    
    var width: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    var height: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    var size: CGSize {
        return UIScreen.main.bounds.size
    }
    
    var origin: CGPoint{
        return UIScreen.main.bounds.origin
    }
}

