//
//  UIView+Frame.swift
//
//  Created by 巴糖 on 2017/1/13.
//

import UIKit

class Frame: UIView {

    /// x origin of view.
    public var wx_left: CGFloat {
        get {
            //self.frame.origin.x
            return self.frame.minX
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    
    /// y origin of view
    public var wx_top: CGFloat {
        get {
            //self.frame.origin.y
            return self.frame.minY
        }
        set {
            self.frame.origin.y = newValue
        }
    }
    
    /// Width of view.
    public var wx_width: CGFloat {
        get {
            //self.frame.size.width
            return self.frame.width
        }
        set {
            self.frame.size.width = newValue
        }
    }
    
    /// Height of view.
    public var wx_height: CGFloat {
        get {
            //self.frame.size.height
            return self.frame.height
        }
        set {
            self.frame.size.height = newValue
        }
    }
    
    /// MARK: -  Right
    public var wx_right: CGFloat {
        get {
            //self.frame.origin.x + self.frame.size.width
            return self.frame.maxX
        }
        set {
            self.frame.origin.x = newValue - self.frame.width
        }
    }
    
    // MARK: -  Bottom
    public var wx_bottom: CGFloat {
        get {
            //self.frame.origin.y + self.frame.size.height
            return self.frame.maxY
        }
        set {
            self.frame.origin.y = newValue - self.frame.height
        }
    }
    
    /// Size of view.
    public var wx_size: CGSize {
        get {
            return self.frame.size
        }
        set {
            self.frame.size = newValue
        }
    }
    
    /// origin of superView.
    public var wx_origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            self.frame.origin = newValue
        }
    }

}
