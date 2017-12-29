//
//  UIView+Ex.swift
//  shaozhuang
//
//  Created by 巴糖 on 2017/12/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIView{

    /// Load view from nib.
    ///
    /// - Parameters:
    ///   - name: nib name.
    ///   - bundle: bundle of nib (default is nil).
    /// - Returns: optional UIView (if applicable).
    public class func loadFromNib<T: UIView>(nibClass name: T.Type, bundle: Bundle? = nil) -> UIView? {
        return UINib(nibName: String(describing: name), bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }

}
