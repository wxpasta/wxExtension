//
//  UIButton+Image.swift
//  
//
//  Created by 巴糖 on 2017/7/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

// MARK: - Properties
public extension UIButton {

    @IBInspectable
    /**
     * Image of normal state for button;
     * 默认状态下按钮的图片；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var imageForNormal: UIImage? {
        get {
            return image(for: .normal)
        }
        set {
            setImage(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    /**
     * Image of highlighted state for button;
     * 高亮状态下按钮的图片；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var imageForHighlighted: UIImage? {
        get {
            return image(for: .highlighted)
        }
        set {
            setImage(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    /**
     * Image of disabled state for button;
     * 禁用状态下按钮的图片；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var imageForDisabled: UIImage? {
        get {
            return image(for: .disabled)
        }
        set {
            setImage(newValue, for: .disabled)
        }
    }
    
    @IBInspectable
    /**
     * Image of disabled state for button;
     * 禁用状态下按钮的图片；
     * also inspectable from Storyboard.
     * 可在nib(xib) Storyboard 中使用。
     */
    var imageForSelected: UIImage? {
        get {
            return image(for: .selected)
        }
        set {
            setImage(newValue, for: .selected)
        }
    }
}
