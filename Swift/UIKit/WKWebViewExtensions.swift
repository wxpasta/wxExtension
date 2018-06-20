//
//  WKWebViewExtensions.swift
//  
//
//  Created by 许宝吉 on 2018/6/15.
//  Copyright © 2018年 SwifterSwift
//

import WebKit

public extension WKWebView {
    func load(_ urlString: String) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            load(request)
        }
    }
}
