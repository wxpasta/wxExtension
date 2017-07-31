//
//  BJCustomSegment.swift
//  TestEx
//
//  Created by 巴糖 on 2017/7/26.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

protocol BJCustomSegmentDelegate {
    func customSegmentSelectIndex(selectIndex:Int) -> ()
}

class BJCustomSegment: UIView {

    var delegate:BJCustomSegmentDelegate?
    
    fileprivate let BJCustomSegmentTag = 999
    fileprivate var maxNum = 0
    
    fileprivate var selectIndex = 0
    
    convenience init(frame: CGRect,titleArray: [String]) {
        self.init(frame: frame)
        let count = titleArray.count
        let width = frame.width / CGFloat(count)
        let height = frame.height
        maxNum = count - 1
        for index in 0..<count {
            let btn = BJCustomButton(type: UIButtonType.custom)
            btn.titleForNormal = titleArray[index]
            btn.frame = CGRect(x: CGFloat(index) * width, y: 0, width: width, height: height)

            btn.tag = BJCustomSegmentTag + index
            btn.addTouchUpInsideTarget(self, action: .onButtonClicked)
            
            if index == 0 {
                leftLayer(color: btn.titleColorForSelected!, btn: btn)
                btn.isSelected = true
            }else if index == (count - 1){
                rightLayer(color: btn.titleColorForNormal!, btn: btn)
            }else{
                rectLayer(color: btn.titleColorForNormal!, btn: btn)
            }
            self.addSubview(btn)
        }
    }
   
    @objc fileprivate func onButtonClicked(btn: BJCustomButton) {
        if (btn.tag - BJCustomSegmentTag) == selectIndex {
            return
        }
        setOldBtn()
        
        let selectedColor = btn.titleColorForSelected!
        
        if btn.tag - BJCustomSegmentTag == 0 {
            leftLayer(color: selectedColor, btn: btn)
        }else if  btn.tag - BJCustomSegmentTag == maxNum{
            rightLayer(color: selectedColor, btn: btn)
        }else{
            rectLayer(color: selectedColor, btn: btn)
        }
        btn.isSelected = true
        selectIndex = btn.tag - BJCustomSegmentTag
        
        delegate?.customSegmentSelectIndex(selectIndex: selectIndex)
    }
    
    func setOldBtn() {
        let oldBtn = self.viewWithTag(selectIndex + BJCustomSegmentTag) as? BJCustomButton
        if oldBtn != nil {
            oldBtn?.shapeLayer?.removeFromSuperlayer()
            
            let oldColor = (oldBtn?.titleColorForNormal!)!
            
            if selectIndex == 0 {
                leftLayer(color: oldColor, btn: oldBtn!)
            }else if selectIndex == maxNum{
                rightLayer(color: oldColor, btn: oldBtn!)
            }else{
                rectLayer(color: oldColor, btn: oldBtn!)
            }
            oldBtn?.isSelected = false
        }
    }
    
    
}
private extension Selector {
    
    static let onButtonClicked = #selector(BJCustomSegment.onButtonClicked)
}

extension BJCustomSegment{
    
    fileprivate func leftLayer(color:UIColor, btn: BJCustomButton){
        //可设置某个角是圆角
        let path = UIBezierPath(roundedRect: btn.bounds,
                                byRoundingCorners: [UIRectCorner.topLeft,UIRectCorner.bottomLeft],
                                cornerRadii: CGSize(width: 4, height: 0))
        
        let shapeLayer = createShapeLayer(control: btn, color: color, path: path)
        btn.shapeLayer = shapeLayer
    }
    
    fileprivate func rectLayer(color:UIColor, btn: BJCustomButton){
        //创建矩形
        let path = UIBezierPath(rect: btn.bounds)
        
        let shapeLayer = createShapeLayer(control: btn, color: color, path: path)
        btn.shapeLayer = shapeLayer
    }
    
    fileprivate func rightLayer(color:UIColor, btn: BJCustomButton){
        //可设置某个角是圆角
        let path = UIBezierPath(roundedRect: btn.bounds,
                                byRoundingCorners: [UIRectCorner.topRight,UIRectCorner.bottomRight],
                                cornerRadii: CGSize(width: 4, height: 0))
        
        let shapeLayer = createShapeLayer(control: btn, color: color, path: path)
        btn.shapeLayer = shapeLayer
        
    }
    
    fileprivate func createShapeLayer(control: UIControl,
                                      color: UIColor,
                                      path: UIBezierPath) -> CAShapeLayer {
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = control.bounds
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = 0.5
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        control.layer.addSublayer(shapeLayer)
        return shapeLayer
    }
}

