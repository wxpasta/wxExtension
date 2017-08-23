//
//  UIButton+title.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

// MARK: - Properties
public extension UIButton {
    
    @IBInspectable
    /// Title of normal state for button; also inspectable from Storyboard.
    public var titleForNormal: String? {
        get {
            return title(for: .normal)
        }
        set {
            setTitle(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    /// Title of highlighted state for button; also inspectable from Storyboard.
    public var titleForHighlighted: String? {
        get {
            return title(for: .highlighted)
        }
        set {
            setTitle(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    /// Title of selected state for button; also inspectable from Storyboard.
    public var titleForSelected: String? {
        get {
            return title(for: .selected)
        }
        set {
            setTitle(newValue, for: .selected)
        }
    }
    
    @IBInspectable
    /// Title of disabled state for button; also inspectable from Storyboard.
    public var titleForDisabled: String? {
        get {
            return title(for: .disabled)
        }
        set {
            setTitle(newValue, for: .disabled)
        }
    }
}
