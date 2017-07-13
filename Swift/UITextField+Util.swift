//
//  UITextField+Util.swift
//  vshiMessge
//
//  Created by 0547 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UITextField{
    
    func setPasswordState() {
        isSecureTextEntry = !isSecureTextEntry
        let neWtext = text
        text = ""
        text = neWtext
    }
}
