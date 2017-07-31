//
//  UIWebView+JavaScriptCore.swift
//  TestJS
//
//  Created by 0547 on 2017/7/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit
import JavaScriptCore

public let DocumentViewWebViewMainFrameJavaScriptContext =  "documentView.webView.mainFrame.javaScriptContext"

extension UIWebView{
    
    open func valueForJSContext() -> JSContext{
        return value(forKeyPath: DocumentViewWebViewMainFrameJavaScriptContext) as! JSContext
        
    }
}
