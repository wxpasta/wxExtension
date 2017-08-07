//
//  MBProgressHUD+Util.swift
//  TestEx
//
//  Created by 0547 on 2017/7/18.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import MBProgressHUD
import Foundation
import UIKit

extension MBProgressHUD{
    
    class public func show(text: String,
                           view: UIView,
                           animate : Bool = true,
                           afterDelay: TimeInterval = 3){
        let hud  = MBProgressHUD.showAdded(to:view , animated: animate)
        hud.mode = MBProgressHUDMode.text
        hud.label.text = text
        
        hud.hide(animated: animate, afterDelay: afterDelay)
    }
    
    class public func showActivityIndicator(view: UIView,
                                            animate : Bool = true,
                                            afterDelay: TimeInterval = 3){
        let HUD = MBProgressHUD.showAdded(to: view, animated: animate)
        HUD.backgroundView.style = .solidColor  // .blur
        HUD.hide(animated: animate, afterDelay: afterDelay)
        
    }
}






