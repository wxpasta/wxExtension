//
//  UIButton+titleColor.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

// MARK: - Properties
public extension UIButton {
    @IBInspectable
    /**
     * Title Color of normal state for button;
     * 默认状态下按钮的文字颜色；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    public var titleColorForNormal: UIColor? {
        get {
            return titleColor(for: .normal)
        }
        set {
            setTitleColor(newValue, for: .normal)
        }
    }
    
    
    @IBInspectable
    /**
     * Title Color of highlighted state for button;
     * 高亮状态下按钮的文字颜色；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    public var titleColorForHighlighted: UIColor? {
        get {
            return titleColor(for: .highlighted)
        }
        set {
            setTitleColor(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    /**
     * Title Color of selected state for button;
     * 选中状态下按钮的文字颜色；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    public var titleColorForSelected: UIColor? {
        get {
            return titleColor(for: .selected)
        }
        set {
            setTitleColor(newValue, for: .selected)
        }
    }
    
    @IBInspectable
    /**
     * Title Color of disabled state for button;
     * 禁用状态下按钮的文字颜色；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    public var titleColorForDisabled: UIColor? {
        get {
            return titleColor(for: .disabled)
        }
        set {
            setTitleColor(newValue, for: .disabled)
        }
    }
}
