//
//  NotificationCenter+Util.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/17.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation

extension NotificationCenter{
    open func addObserver(_ observer: Any,
                          selector: Selector,
                          notificationName:String,
                          _ object: Any? = nil)
    {
        let name = NSNotification.Name(rawValue: notificationName)
        
        addObserver(observer, selector: selector, name: name, object: object)
    }
    
    open func post(notificationName: String,
                   object: Any? = nil){
        let name = NSNotification.Name(rawValue: notificationName)
        post(name: name, object: object)
    }
    
    open func removeObserver(_ observer: Any,
                             notificationName: String,
                             object: Any? = nil){
        let name = NSNotification.Name(rawValue: notificationName)
        removeObserver(observer, name: name, object: object)
    }
    
    
}
