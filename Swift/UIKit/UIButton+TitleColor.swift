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
    /// Title color of normal state for button; also inspectable from Storyboard.
    public var titleColorForNormal: UIColor? {
        get {
            return titleColor(for: .normal)
        }
        set {
            setTitleColor(newValue, for: .normal)
        }
    }
    
    
    @IBInspectable
    /// Title color of highlighted state for button; also inspectable from Storyboard.
    public var titleColorForHighlighted: UIColor? {
        get {
            return titleColor(for: .highlighted)
        }
        set {
            setTitleColor(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    /// Title color of selected state for button; also inspectable from Storyboard.
    public var titleColorForSelected: UIColor? {
        get {
            return titleColor(for: .selected)
        }
        set {
            setTitleColor(newValue, for: .selected)
        }
    }
    
    @IBInspectable
    /// Title color of disabled state for button; also inspectable from Storyboard.
    public var titleColorForDisabled: UIColor? {
        get {
            return titleColor(for: .disabled)
        }
        set {
            setTitleColor(newValue, for: .disabled)
        }
    }
}
