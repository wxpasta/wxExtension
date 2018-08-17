//
//  UITextField+maxLength.swift
//  TestSwiftEx
//
//  Created by AngieMIta on 2017/8/7.
//  Copyright © 2017年 AngieMIta. All rights reserved.
//

import UIKit

private var kAssociationKeyUITextFieldMaxLength: Int = 0

extension UITextField {
    
    @IBInspectable var maxLength: Int {
        get {
            if let length = objc_getAssociatedObject(self, &kAssociationKeyUITextFieldMaxLength) as? Int {
                return length
            } else {
                return Int.max
            }
        }
        set {
            objc_setAssociatedObject(self, &kAssociationKeyUITextFieldMaxLength, newValue, .OBJC_ASSOCIATION_RETAIN)
            addTarget(self, action: .checkMaxLength, for: .editingChanged)
        }
    }
    
    @objc func checkMaxLength(textField: UITextField) {
        guard let prospectiveText = self.text,
            prospectiveText.characters.count > maxLength
            else {
                return
        }
        
        let selection = selectedTextRange
        let maxCharIndex = prospectiveText.index(prospectiveText.startIndex, offsetBy: maxLength)
        text = prospectiveText.substring(to: maxCharIndex)
        selectedTextRange = selection
    }
}
private extension Selector {
    static let checkMaxLength = #selector(UITextField.checkMaxLength)
    
}
