//
//  UIViewController+Util.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit


extension UIViewController{
    
    
    /// push 带动画
    ///
    /// - Parameter viewController:
    func push(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func popBack(){
        navigationController?.popViewController(animated: true)
    }
    
    ///设置状态栏背景颜色
    func setStatusBarBackgroundColor(color : UIColor) {
        let statusBarWindow : UIView = UIApplication.shared.value(forKey: "statusBarWindow") as! UIView
        let statusBar : UIView = statusBarWindow.value(forKey: "statusBar") as! UIView
        /*
         if statusBar.responds(to:Selector("setBackgroundColor:")) {
         statusBar.backgroundColor = color
         }*/
        if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
            statusBar.backgroundColor = color
        }
    }
    
    /// Check if ViewController is onscreen and not hidden.
    public var isVisible: Bool {
        // http://stackoverflow.com/questions/2777438/how-to-tell-if-uiviewcontrollers-view-is-visible
        return self.isViewLoaded && view.window != nil
    }
    
    /// NavigationBar in a ViewController.
    public var navigationBar: UINavigationBar? {
        return navigationController?.navigationBar
    }
}
