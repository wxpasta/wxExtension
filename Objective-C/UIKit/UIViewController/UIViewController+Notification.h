//
//  UIViewController+Notification.h
//  BJCategory
//
//  Created by 巴糖 on 2018/7/29.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN


@interface UIViewController (Notification)

/**
 Assign as listener to notification
 
 @param observer Object registering as an observer.
 @param aName notification name
 @param aSelector selector to run with notified
 @param anObject anObject
 */
- (void)wx_addObserver:(id)observer
              selector:(SEL)aSelector
                  name:(nullable NSNotificationName)aName
                object:(nullable id)anObject;
/**
 Assign as listener to notification
 
 @param observer Object registering as an observer.
 @param aName notification name
 @param aSelector selector to run with notified
 */
- (void)wx_addObserver:(id)observer
              selector:(SEL)aSelector
                  name:(nullable NSNotificationName)aName;

/**
 Assign as listener to notification
 
 @param aName notification name
 @param aSelector selector to run with notified
 @param anObject anObject
 */
- (void)wx_addNotificationObserverWithName:(nullable NSNotificationName)aName
                                  selector:(SEL)aSelector
                                    object:(nullable id)anObject;

/**
 Assign as listener to notification
 
 @param aName notification name
 @param aSelector selector to run with notified
 */
- (void)wx_addNotificationObserverWithName:(nullable NSNotificationName)aName
                                  selector:(SEL)aSelector;

/**
 Unassign as listener to notification
 */
- (void)wx_removeNotificationsObserver;

/**
 Unassign as listener to notification
 
 @param aName notification name
 */
- (void)wx_removeNotificationsObserverWithName:(nullable NSNotificationName)aName;

@end

NS_ASSUME_NONNULL_END
