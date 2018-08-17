//
//  UIImage+Util.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/10.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIImage{
    
    func original() -> UIImage{
        return self.withRenderingMode(.alwaysOriginal)
    }
    
    func createImageWithColor(color: UIColor) -> UIImage
    {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let theImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return theImage!
    }
}
