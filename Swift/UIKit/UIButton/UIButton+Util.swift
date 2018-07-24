//
//  UIButton+Util.swift
//  ActionSheet
//
//  Created by 许宝吉 on 2018/7/23.
//  Copyright © 2018年 dfsj. All rights reserved.
//

import UIKit


extension UIButton{
    
    /// 圆角
    ///
    /// - Parameters:
    ///   - borderWidth: 边框宽度
    ///   - borderColor: 边框颜色
    ///   - cornerRadius: 圆角半径
    func set(borderWidth: CGFloat?, borderColor: UIColor?, cornerRadius: CGFloat?) {
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.masksToBounds = true
        layer.borderWidth = borderWidth!
        layer.borderColor = borderColor?.cgColor
        layer.cornerRadius = cornerRadius!
    }
}

extension UIButton {
    
    /// 倒计时
    ///
    /// - Parameters:
    ///   - timeLine: 倒计时总时间
    ///   - title: 还没倒计时的title
    ///   - mainColor: 还没倒计时的颜色
    ///   - countColor: 倒计时的颜色
    func startWith(timeLine: TimeInterval, title: String?, mainColor:UIColor?, countColor: UIColor?) {
        var time: Int = Int(timeLine)
        let codeTimer = DispatchSource.makeTimerSource(flags: .init(rawValue: 0), queue: DispatchQueue.global())
        codeTimer.schedule(deadline: .now(), repeating: .milliseconds(1000))  //此处方法与Swift 3.0 不同
        codeTimer.setEventHandler(handler: {
            time -= 1
            DispatchQueue.main.async {
                self.isUserInteractionEnabled = false
            }
            if time < 0 {
                codeTimer.cancel()
                DispatchQueue.main.async {
                    self.isUserInteractionEnabled = true
                    self.setTitle(title, for: UIControlState.normal)
                    self.setTitleColor(mainColor, for: UIControlState.normal)
                    self.layer.borderColor = mainColor?.cgColor
                }
                return
            }
            DispatchQueue.main.async {
                self.setTitle("\(time)", for: UIControlState.normal)
                self.setTitleColor(countColor, for: UIControlState.normal)
                self.layer.borderColor = countColor?.cgColor
            }
        })
        codeTimer.activate()
    }
}

import UIKit

/**
 点击时间Block 回调
 
 @param button 点击的btn
 */
typealias clickEventBlock = (_ button : UIButton) ->Void
var buttonEventBlock : clickEventBlock?

extension UIButton {
    /// 对象点击回调的方法
    ///
    /// - Parameter block: 回调
    func addClickEventWithBlock(block : @escaping clickEventBlock) -> Void {
        buttonEventBlock = block
        if (buttonEventBlock != nil) {
            self.addTarget(self, action: #selector(btnTouchUpInSideEvent(button:)), for: UIControlEvents.touchUpInside)
        }else {
            self.removeTarget(self, action: #selector(btnTouchUpInSideEvent(button:)), for: UIControlEvents.touchUpInside)
        }
    }
    
    @objc func btnTouchUpInSideEvent(button : UIButton) {
        if (buttonEventBlock != nil) {
            buttonEventBlock!(button)
        }
    }
    var block : clickEventBlock {
        get {
            return objc_getAssociatedObject(self, "key") as! clickEventBlock
        }
        set {
            objc_setAssociatedObject(self, "key", buttonEventBlock, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
    }
    
}
