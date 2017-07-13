//
//  UIViewController+ReachabilitySwift.swift
//  vshiMessge
//
//  Created by 0547 on 2017/7/6.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation
import ReachabilitySwift

extension UIViewController{

    static let reachability = Reachability()!
    
    enum ReachabilityStatus {
        case not
        case viaWiFi
        case viaWWAN
    }
    
    func monitorNetWork()  {
        //declare this inside of viewWillAppear
        NotificationCenter.default.addObserver(self, selector: .reachabilityChanged,name: ReachabilityChangedNotification,object: UIViewController.reachability)
        do{
            try UIViewController.reachability.startNotifier()
        }catch{
            BJPrint("could not start reachability notifier")
        }
    }

    func reachabilityChanged(note: Notification) {
        let reachability = note.object as! Reachability
        
        if reachability.isReachable {
            if reachability.isReachableViaWiFi {
                BJPrint("Reachable via WiFi")
            } else {
                BJPrint("Reachable via Cellular")
            }
        } else {
            BJPrint("Network not reachable")
        }
    }
    
    /**
     判断网络类型
     
     - returns: ReachabilityStatus
     */
    class func networkStatus() -> ReachabilityStatus {
        if UIViewController.reachability.isReachable {
            if UIViewController.reachability.isReachableViaWiFi {
               return ReachabilityStatus.viaWiFi
            } else {
                return ReachabilityStatus.viaWWAN
            }
        } else {
           return ReachabilityStatus.not
        }
    }
    
    /**
     判断网络是否可用
     
     - returns: true 可用 false 不可用
     */
    class func isNetWork() ->Bool {
        if UIViewController.reachability.isReachable {
            return true
        } else {
            return false
        }
    }
}

private extension Selector {
    static let reachabilityChanged = #selector(UIViewController.reachabilityChanged)
}
