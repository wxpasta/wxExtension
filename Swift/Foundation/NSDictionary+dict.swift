//
//  NSDictionary+dict.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/23.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation

extension NSDictionary{

    /// JSONString转换为字典
    func jsonTodict(jsonString:String) ->NSDictionary{
        
        let jsonData:Data = jsonString.data(using: .utf8)!
        
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
        if dict != nil {
            return dict as! NSDictionary
        }
        
        return NSDictionary()
    }
}
