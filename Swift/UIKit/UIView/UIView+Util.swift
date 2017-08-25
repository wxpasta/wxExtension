//
//  UIView+Util.swift
//  Hello
//
//  Created by AngieMIta on 2017/8/24.
//  Copyright © 2017年 AngieMIta. All rights reserved.
//

import UIKit

extension UIView{
    /// First responder.第一响应者。
    public var firstResponder: UIView? {
        guard !isFirstResponder else {
            return self
        }
        for subView in subviews {
            if subView.isFirstResponder {
                return subView
            }
        }
        return nil
    }
    
    /// Check if view is in RTL format.检查视图是否为RTL格式。
    public var isRightToLeft: Bool {
        if #available(iOS 10.0, *, tvOS 10.0, *) {
            return effectiveUserInterfaceLayoutDirection == .rightToLeft
        } else {
            return false
        }
    }
    
    
    /// Take screenshot of view (if applicable).接受屏幕截图(如果适用)
    public var screenshot: UIImage? {
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, 0.0);
        defer {
            UIGraphicsEndImageContext()
        }
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        layer.render(in: context)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    /// Get view's parent view controller 获取视图的父视图控制器
    public var parentViewController: UIViewController? {
        weak var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}

extension UIView{
    
    /// Set some or all corners radiuses of view.设置一些或所有角半径的视图。
    ///
    /// - Parameters:
    ///   - corners: array of corners to change (example: [.bottomLeft, .topRight]).
    ///   - radius: radius for selected corners.
    public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        layer.mask = shape
    }
    
    
}


extension UIView{
    /// Add array of subviews to view.添加视图的子视图数组。
    ///
    /// - Parameter subviews: array of subviews to add to self.
    public func addSubviews(_ subviews: [UIView]) {
        subviews.forEach({self.addSubview($0)})
    }
    
    /// Remove all subviews in view.删除视图中的所有子视图。
    public func removeSubviews() {
        subviews.forEach({$0.removeFromSuperview()})
    }
    
}


extension UIView{
    /// Fade in view.淡入视图。
    ///
    /// - Parameters:
    ///   - duration: animation duration in seconds (default is 1 second).
    ///   - completion: optional completion handler to run with animation finishes (default is nil)
    public func fadeIn(duration: TimeInterval = 1, completion: ((Bool) -> Void)? = nil) {
        if isHidden {
            isHidden = false
        }
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1
        }, completion: completion)
    }
    
    /// Fade out view.淡出视图。
    ///
    /// - Parameters:
    ///   - duration: animation duration in seconds (default is 1 second).
    ///   - completion: optional completion handler to run with animation finishes (default is nil)
    public func fadeOut(duration: TimeInterval = 1, completion: ((Bool) -> Void)? = nil) {
        if isHidden {
            isHidden = false
        }
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0
        }, completion: completion)
    }


    
}


extension UIView{
    /// Load view from nib.加载视图从nib。
    ///
    /// - Parameters:
    ///   - name: nib name.
    ///   - bundle: bundle of nib (default is nil).
    /// - Returns: optional UIView (if applicable).
    public class func loadFromNib(named name: String, bundle : Bundle? = nil) -> UIView? {
        return UINib(nibName: name, bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
    
    
}

























