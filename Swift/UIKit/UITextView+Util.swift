//
//  UITextView+Util.swift
//  TestSwiftEx
//
//  Created by 巴糖 on 2017/8/3.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UITextView{
    
    /// Clear text.
    public func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }
    
    /// Scroll to the bottom of text view
    public func scrollToBottom() {
        let range = NSMakeRange((text as NSString).length - 1, 1)
        scrollRangeToVisible(range)
    }
    
    /// Scroll to the top of text view
    public func scrollToTop() {
        let range = NSMakeRange(0, 1)
        scrollRangeToVisible(range)
    }
    
}
