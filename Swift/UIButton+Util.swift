//
//  UIButton+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIButton{
    
    var title: String {
        get {
            return self.title(for: UIControlState.normal)!
        }
        set {
            self.setTitle(newValue, for: UIControlState.normal)
            self.setTitle(newValue, for: UIControlState.selected)
            self.setTitle(newValue, for: UIControlState.highlighted)
            self.setTitle(newValue, for: UIControlState.disabled)
        }
    }
    
    var image: UIImage {
        get {
            return self.image(for: UIControlState.normal)!
        }
        set {
            self.setImage(newValue, for: UIControlState.normal)
            self.setImage(newValue, for: UIControlState.selected)
            self.setImage(newValue, for: UIControlState.highlighted)
            self.setImage(newValue, for: UIControlState.disabled)
        }
    }
    
    var backgroundImage: UIImage {
        get {
            return self.backgroundImage(for: UIControlState.normal)!
        }
        set {
            self.setBackgroundImage(newValue, for: UIControlState.normal)
            self.setBackgroundImage(newValue, for: UIControlState.selected)
            self.setBackgroundImage(newValue, for: UIControlState.highlighted)
            self.setBackgroundImage(newValue, for: UIControlState.disabled)
        }
    }
    
    var titleColor: UIColor {
        get {
            return self.titleColor(for: UIControlState.normal)!
        }
        set {
            self.setTitleColor(newValue, for: UIControlState.normal)
            self.setTitleColor(newValue, for: UIControlState.selected)
            self.setTitleColor(newValue, for: UIControlState.highlighted)
            self.setTitleColor(newValue, for: UIControlState.disabled)
        }
    }
    
    
}
