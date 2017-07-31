//
//  UIApplication+Util..swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/11.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UIApplication {

    class func open(scheme: String) {
        if let url = URL(string: scheme) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:],
                                          completionHandler: {
                                            (success) in
                                            BJPrint("Open \(scheme): \(success)")
                })
            } else {
                let success = UIApplication.shared.openURL(url)
                BJPrint("Open \(scheme): \(success)")
            }
        }
    }
    
    
}
