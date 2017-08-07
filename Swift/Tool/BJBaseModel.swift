//
//  BJBaseModel.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/22.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

class BJBaseModel: NSObject {

    // MARK:- 自定义构造函数
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
