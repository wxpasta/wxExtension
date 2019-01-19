//
//  UIButton+CreateImage.swift
//  
//
//  Created by 许宝吉 on 2018/7/23.
//  Copyright © 2018年 dfsj. All rights reserved.
//

import UIKit
extension UIButton{
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - imageName: 图片名称
    ///   - backgroundColor: 背景颜色
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(imageName: String?,
                             backgroundColor: UIColor?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: imageName!), for: UIControl.State.normal)
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControl.State.normal)
        return button
    }
    
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - imageName: 图片名称
    ///   - backgroundColor: 背景颜色
    /// - Returns: UIButton
    static func createButton(imageName: String?,
                             backgroundColor: UIColor?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: imageName!), for: UIControl.State.normal)
        button.backgroundColor = backgroundColor
        return button
    }
    
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - imageName: 图片名称
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(imageName: String?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: imageName!), for: UIControl.State.normal)
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControl.State.normal)
        return button
    }
    
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - backgroundColor: 背景颜色
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(backgroundColor: UIColor?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControl.State.normal)
        return button
    }
    
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - imageName: 图片名称
    /// - Returns: UIButton
    static func createButton(imageName: String?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: imageName!), for: UIControl.State.normal)
        return button
    }
    
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControl.State.normal)
        return button
    }
    
    /// 创建按钮(图)
    ///
    /// - Parameters:
    ///   - backgroundColor: 背景颜色
    /// - Returns: UIButton
    static func createButton(backgroundColor: UIColor?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.backgroundColor = backgroundColor
        return button
    }
}
