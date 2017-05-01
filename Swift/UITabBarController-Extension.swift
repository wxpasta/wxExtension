//
//  VC-Extension.swift
//  DYZB
//
//  Created by 巴糖 on 2017/5/1.
//  Copyright © 2017年 小码哥. All rights reserved.
//

import UIKit

// MARK:- 添加子控制器
extension UITabBarController {
    func addChildViewController_custom(_ storyboardName : String) {
        // 1.加载storyboard中的控制器
        let childVc = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()!
        // 2.将控制器添加到TabBarController中
        addChildViewController(childVc)
    }
}
