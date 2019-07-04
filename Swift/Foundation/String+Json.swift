//
//  String+Json.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/23.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation

extension NSString{
    
    /// 字典转换为JSONString
    convenience init?(dict: Dictionary<String, Any>) {
        if (!JSONSerialization.isValidJSONObject(dict)) {
            print("无法解析出JSONString")
            return nil
        }
        let data : NSData! = try? JSONSerialization.data(withJSONObject: dict, options: []) as NSData?
        self.init(data:data as Data,encoding: String.Encoding.utf8.rawValue)
    }
}
