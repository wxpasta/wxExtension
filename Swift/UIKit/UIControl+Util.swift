//
//  UIControl+Util.swift
//  
//
//  Created by 巴糖 on 2017/7/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

/*
 touchDown：单点触摸按下事件，点触屏幕
 touchDownRepeat：多点触摸按下事件，点触计数大于1，按下第2、3或第4根手指的时候
 touchDragInside：触摸在控件内拖动时
 touchDragOutside：触摸在控件外拖动时
 touchDragEnter：触摸从控件之外拖动到内部时
 touchDragExit：触摸从控件内部拖动到外部时
 touchUpInside：在控件之内触摸并抬起事件
 touchUpOutside：在控件之外触摸抬起事件
 touchCancel：触摸取消事件，即一次触摸因为放上太多手指而被取消，或者电话打断
 */

extension UIControl{
    
    open func addTarget(forTouchUpInside target: Any?, action: Selector){
        addTarget(target, action: action, for: UIControlEvents.touchUpInside)
    }
    
    
    open func addTarget(forValueChanged target: Any?, action: Selector){
        addTarget(target, action: action, for: UIControlEvents.valueChanged)
    }
    
    
    open func addTarget(forEditingChanged target: Any?, action: Selector){
        addTarget(target, action: action, for: UIControlEvents.editingChanged)
    }
    
}
