//
//  JSContext+Util.swift
//  TestJS
//
//  Created by 0547 on 2017/7/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import JavaScriptCore

extension JSContext{
    
    open func setObj(_ object: Any!, key: String){
        setObject(object, forKeyedSubscript: key as NSCopying & NSObjectProtocol)
    }
}
