//
//  UITextView+maxLength.swift
//  TestSwiftEx
//
//  Created by AngieMIta on 2017/8/7.
//  Copyright © 2017年 AngieMIta. All rights reserved.
//

import UIKit

private var kAssociationKeyTextViewMaxLength: Int = 0

extension UITextView{
    
    @IBInspectable var maxLength: Int {
        get {
            if let length = objc_getAssociatedObject(self, &kAssociationKeyTextViewMaxLength) as? Int {
                return length
            } else {
                return Int.max
            }
        }
        set {
            objc_setAssociatedObject(self, &kAssociationKeyTextViewMaxLength, newValue, .OBJC_ASSOCIATION_RETAIN)
            NotificationCenter.default.addObserver(self, selector: .wx_textViewTextDidChange, name: UITextView.textDidChangeNotification, object: self)
            
        }
    }
    
    @objc func wx_textViewTextDidChange(notification:NSNotification)
    {
        guard let prospectiveText = self.text,
            prospectiveText.length > maxLength
            else {
                return
        }
        
        let selection = selectedTextRange
        let maxCharIndex = prospectiveText.index(prospectiveText.startIndex, offsetBy: maxLength)
        text = String(prospectiveText[..<maxCharIndex]) // prospectiveText.substring(to: maxCharIndex)
        selectedTextRange = selection
    }
}

private extension Selector {
    static let wx_textViewTextDidChange = #selector(UITextView.wx_textViewTextDidChange)
    
}
