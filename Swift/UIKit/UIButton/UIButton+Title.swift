//
//  UIButton+title.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

// MARK: - Properties
extension UIButton {
    
    @IBInspectable
    /**
     * Title of normal state for button;
     * 默认状态下按钮的文字；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var normalTitle: String? {
        get {
            return title(for: .normal)
        }
        set {
            setTitle(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    /**
     * Title of highlighted state for button;
     * 高亮状态下按钮的文字；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var highlightedTitle: String? {
        get {
            return title(for: .highlighted)
        }
        set {
            setTitle(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    /**
     * Title of disabled state for button;
     * 禁用状态下按钮的文字；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var disabledTitle: String? {
        get {
            return title(for: .disabled)
        }
        set {
            setTitle(newValue, for: .disabled)
        }
    }
    
    @IBInspectable
    /**
     * Title of selected state for button;
     * 选中状态下按钮的文字；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var selectedTitle: String? {
        get {
            return title(for: .selected)
        }
        set {
            setTitle(newValue, for: .selected)
        }
    }
}
