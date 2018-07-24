//
//  UIButton+CreateTitle.swift
//  
//
//  Created by 许宝吉 on 2018/7/23.
//  Copyright © 2018年 dfsj. All rights reserved.
//

import UIKit
extension UIButton{

    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - titleFont: 字体大小
    ///   - backgroundColor: 背景颜色
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?, titleFont: UIFont?,
                             backgroundColor: UIColor?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        button.titleLabel?.font = titleFont
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControlState.normal)
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - titleFont: 字体大小
    ///   - backgroundColor: 背景颜色
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?, titleFont: UIFont?,
                             backgroundColor: UIColor?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        button.titleLabel?.font = titleFont
        button.backgroundColor = backgroundColor
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - backgroundColor: 背景颜色
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?,
                             backgroundColor: UIColor?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        button.backgroundColor = backgroundColor
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - titleFont: 字体大小
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?, titleFont: UIFont?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        button.titleLabel?.font = titleFont
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleFont: 字体大小
    /// - Returns: UIButton
    static func createButton(title: String?, titleFont: UIFont?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.titleLabel?.font = titleFont
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - backgroundColor: 背景颜色
    /// - Returns: UIButton
    static func createButton(title: String?,
                             backgroundColor: UIColor?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.backgroundColor = backgroundColor
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    /// - Returns: UIButton
    static func createButton(title: String?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        return button
    }
    
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - titleFont: 字体大小
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?, titleFont: UIFont?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        button.titleLabel?.font = titleFont
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControlState.normal)
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(title: String?, titleColor: UIColor?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(titleColor, for: UIControlState.normal)
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControlState.normal)
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - titleFont: 字体大小
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(title: String?, titleFont: UIFont?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.titleLabel?.font = titleFont
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControlState.normal)
        return button
    }
    
    /// 创建按钮(文字)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(title: String?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: UIControlState.normal)
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControlState.normal)
        return button
    }
}
