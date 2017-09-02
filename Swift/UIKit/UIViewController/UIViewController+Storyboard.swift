//
//  UIViewController+Storyboard.swift
//  XMGTV
//
//  Created by 巴糖 on 2017/9/2.
//  Copyright © 2017年 coderwhy. All rights reserved.
//

import UIKit


extension UIViewController{
    
    
    /// addChildViewController
    ///
    /// - Parameter storyName: UIStoryboardName
    func addChildViewControllerForStoryboard(_ storyName : String) {
        if storyName.isEmpty {
            return
        }
        // 1.通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        // 2.将childVc作为子控制器
        addChildViewController(childVc)
    }

}
