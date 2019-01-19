//
//  UIButton+Create.swift
//  ActionSheet
//
//  Created by 许宝吉 on 2018/7/23.
//  Copyright © 2018年 dfsj. All rights reserved.
//

import UIKit

extension UIButton{
    /// 创建按钮(全)
    ///
    /// - Parameters:
    ///   - imageName: 图片名称
    ///   - title: 标题
    ///   - titleColor: 字体颜色
    ///   - titleFont: 字体大小
    ///   - backgroundColor: 背景颜色
    ///   - backgroundImageName: 背景图片名称
    /// - Returns: UIButton
    static func createButton(imageName: String?,
                             title: String?, titleColor: UIColor?, titleFont: UIFont?,
                             backgroundColor: UIColor?,
                             backgroundImageName: String?) -> UIButton {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setTitle(title, for: UIControl.State.normal)
        button.setTitleColor(titleColor, for: UIControl.State.normal)
        button.titleLabel?.font = titleFont
        button.setImage(UIImage(named: imageName!), for: UIControl.State.normal)
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(UIImage(named: backgroundImageName!), for: UIControl.State.normal)
        return button
    }
}
