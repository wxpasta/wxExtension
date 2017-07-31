//
//  Date+Ex.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/5.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation


extension Date{
    
    func toSting() -> String {
        // 创建一个日期格式器
        let dformatter = DateFormatter()
        // 为日期格式器设置格式字符串
        dformatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        // 使用日期格式器格式化当前日期、时间
        let datestr = dformatter.string(from: self)
        return datestr
    }
}
