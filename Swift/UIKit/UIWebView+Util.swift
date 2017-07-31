//
//  UIWebView+Util.swift
//  TestJS
//
//  Created by 0547 on 2017/7/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIWebView{
    
    /// 跟loadRequest相同
    ///
    /// - Parameter urlString: urlString
    open func loadReq(_ urlString: String){
        let nsUrl = URL(string: urlString)
        if let url = nsUrl {
            loadRequest(URLRequest(url: url))
        }
    }
    
    
    /// 绝对请求Url字符串
    ///
    /// - Returns: Returns the absolute string for the URL.
    public var reqUrlAbsStr: String? {
        return request?.url?.absoluteString
    }
}
