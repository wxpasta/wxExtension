//
//  UIViewController+NotificationCenter.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/12.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit


extension UIViewController{
    
    /// Assign as listener to notification.
    ///
    /// - Parameters:
    ///   - observer: Object registering as an observer.
    ///   - aSelector: Selector that specifies the message the receiver sends observer to notify it of the notification posting. The method specified by aSelector must have one and only one argument (an instance of NSNotification).
    ///   - aName: The name of the notification for which to register the observer; that is, only notifications with this name are delivered to the observer.
    ///   - anObject: The object whose notifications the observer wants to receive; that is, only notifications sent by this sender are delivered to the observer.  If you pass nil, the notification center doesn’t use a notification’s sender to decide whether to deliver it to the observer.
    open func addNotificationObserver(_ observer: Any,
                                      selector aSelector: Selector,
                                      name aName: NSNotification.Name?,
                                      object anObject: Any?){
        NotificationCenter.default.addObserver(observer, selector: aSelector, name: aName, object: anObject)
    }
    
    /// Assign as listener to notification.
    ///
    /// - Parameters:
    ///   - observer: Object registering as an observer.
    ///   - aSelector: Selector that specifies the message the receiver sends observer to notify it of the notification posting. The method specified by aSelector must have one and only one argument (an instance of NSNotification).
    ///   - aName: The name of the notification for which to register the observer; that is, only notifications with this name are delivered to the observer.
    open func addNotificationObserver(_ observer: Any,
                                      selector aSelector: Selector,
                                      name aName: NSNotification.Name?){
        NotificationCenter.default.addObserver(observer, selector: aSelector, name: aName, object: nil)
    }
    
    /// Unassign as listener to notification.
    ///
    /// - Parameters:
    ///   - observer: Observer to remove from the dispatch table. Specify an observer to remove only entries for this observer.
    ///   - aName: Name of the notification to remove from dispatch table. Specify a notification name to remove only entries that specify this notification name. When nil, the receiver does not use notification names as criteria for removal.
    ///   - anObject: Sender to remove from the dispatch table. Specify a notification sender to remove only entries that specify this sender. When nil, the receiver does not use notification senders as criteria for removal.
    open func removeNotificationObserver(_ observer: Any,
                                         name aName: NSNotification.Name?,
                                         object anObject: Any?) {
        NotificationCenter.default.removeObserver(observer, name: aName, object: anObject)
    }
    
    /// Unassign as listener to notification.
    ///
    /// - Parameters:
    ///   - observer: Observer to remove from the dispatch table. Specify an observer to remove only entries for this observer.
    ///   - aName: Name of the notification to remove from dispatch table. Specify a notification name to remove only entries that specify this notification name. When nil, the receiver does not use notification names as criteria for removal.
    ///   - anObject: Sender to remove from the dispatch table. Specify a notification sender to remove only entries that specify this sender. When nil, the receiver does not use notification senders as criteria for removal.
    open func removeNotificationObserver(_ observer: Any,
                                         name aName: NSNotification.Name?) {
        NotificationCenter.default.removeObserver(observer, name: aName, object: nil)
    }
    
    /// Assign as listener to notification.
    ///
    /// - Parameters:
    ///   - aSelector: Selector that specifies the message the receiver sends observer to notify it of the notification posting. The method specified by aSelector must have one and only one argument (an instance of NSNotification).
    ///   - aName: The name of the notification for which to register the observer; that is, only notifications with this name are delivered to the observer.
    ///   - anObject: The object whose notifications the observer wants to receive; that is, only notifications sent by this sender are delivered to the observer.  If you pass nil, the notification center doesn’t use a notification’s sender to decide whether to deliver it to the observer.
    open func addNotificationObserver(selector aSelector: Selector,
                                      name aName: NSNotification.Name?,
                                      object anObject: Any?) {
        NotificationCenter.default.addObserver(self, selector: aSelector, name: aName, object: anObject)
    }
    
    /// Unassign as listener to notification.
    ///
    /// - Parameter name: notification name.
    ///   - anObject: Sender to remove from the dispatch table. Specify a notification sender to remove only entries that specify this sender. When nil, the receiver does not use notification senders as criteria for removal.
    open func removeNotificationObserver(name: Notification.Name,
                                         object anObject: Any?) {
        NotificationCenter.default.removeObserver(self, name: name, object: anObject)
    }
    
}
