//
//  BJCustomButton.swift
//  TestEx
//
//  Created by 巴糖 on 2017/7/26.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

class BJCustomButton: UIButton {
    
    var shapeLayer: CAShapeLayer? = nil
 
    // 屏蔽按钮高亮效果
    override var isHighlighted: Bool{
        get{
            return false
        }
        set{
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}
