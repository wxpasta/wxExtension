//
//  UIViewHelper.swift
//  S0521
//
//  Created by 巴糖 on 2017/5/23.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIView {

    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = newValue > 0
        }
    }

}

@IBDesignable class MyPreviewLabel: UILabel {
    
}
