//
//  UIViewControllerExtension+Storyboard.swift
//  BJProject
//
//  Created by 许宝吉 on 2018/7/26.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

import UIKit

// MARK:- 添加子控制器
extension UIViewController {
    
    @discardableResult open func addChildViewController(_ storyBoardName : String) ->Bool{
        // 判断字符串是否为空
        if storyBoardName.isEmpty {
            return false
        }
        // 1.加载storyboard中的控制器
        let childViewController = UIStoryboard(name: storyBoardName, bundle: nil).instantiateInitialViewController()
        // 2.将控制器添加到UIViewController中
        if let viewController = childViewController {
            addChild(viewController)
            return true
        }
        return false
    }
    
    open func addChildViewControllers(_ storyBoardNames : [String]) {
        for index in 0..<storyBoardNames.count {
            let name = storyBoardNames[index]
            addChildViewController(name)
        }
    }
}
