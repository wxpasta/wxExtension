//
//  UIImage+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIImage{
    
    func original() -> UIImage{
        return self.withRenderingMode(.alwaysOriginal)
    }
}

