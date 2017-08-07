//
//  UIViewController+PopupDialog.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/10.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit
import PopupDialog

extension UIViewController{
    
    func Alert(_ animated: Bool = true, msg: String) {
        // Prepare the popup
        let title = ""
        let message = msg
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message, buttonAlignment: .horizontal, transitionStyle: .zoomIn, gestureDismissal: true) {
        }
        
        // Create first button
        let buttonOne = CancelButton(title: "确定") {
        }
        buttonOne.titleColor = UIColor(hexString: "#017578")
        
        // Add buttons to dialog
        popup.addButtons([buttonOne])
        
        // Present dialog
        self.present(popup, animated: animated, completion: nil)
    }
    
    
    func Alert(animated: Bool = true, msg: String, finishedCallback:@escaping ()->()) {
        
        // Prepare the popup
        let title = ""
        let message = msg
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message, buttonAlignment: .horizontal, transitionStyle: .zoomIn, gestureDismissal: true) {
        }
        
        // Create first button
        let buttonOne = CancelButton(title: "取消") {
        }
        buttonOne.titleColor = UIColor(hexString: "#017578")
        
        // Create second button
        let buttonTwo = DefaultButton(title: "确定") {
            finishedCallback()
        }
        buttonTwo.titleColor = UIColor(hexString: "#017578")
        
        // Add buttons to dialog
        popup.addButtons([buttonOne, buttonTwo])
        
        // Present dialog
        self.present(popup, animated: animated, completion: nil)
    }

}
