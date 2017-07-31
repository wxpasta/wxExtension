//
//  UITextView+Util.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/25.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UITextView{
    /**
     根据字符串的的长度来计算UITextView的高度
     
     - parameter textView:   UITextView
     - parameter fixedWidth:      UITextView宽度
     - returns:              返回UITextView的高度
     */
    internal class func heightForTextView(textView: UITextView, fixedWidth: CGFloat) -> CGFloat {
        let size = CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude)
        let constraint = textView.sizeThatFits(size)
        return constraint.height
    }
}

