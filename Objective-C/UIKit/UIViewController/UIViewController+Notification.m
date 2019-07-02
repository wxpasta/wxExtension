//
//  UIViewController+Notification.m
//  BJCategory
//
//  Created by 巴糖 on 2018/7/29.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UIViewController+Notification.h"

@implementation UIViewController (Notification)

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
                object:(nullable id)anObject{
    [[NSNotificationCenter defaultCenter] addObserver:observer
                                             selector:aSelector
                                                 name:aName
                                               object:anObject];
}
/**
 Assign as listener to notification
 
 @param observer Object registering as an observer.
 @param aName notification name
 @param aSelector selector to run with notified
 */
- (void)wx_addObserver:(id)observer
              selector:(SEL)aSelector
                  name:(nullable NSNotificationName)aName{
    [[NSNotificationCenter defaultCenter] addObserver:observer
                                             selector:aSelector
                                                 name:aName
                                               object:nil];
}

/**
 Assign as listener to notification

 @param aName notification name
 @param aSelector selector to run with notified
 @param anObject anObject
 */
- (void)wx_addNotificationObserverWithName:(nullable NSNotificationName)aName
                                  selector:(SEL)aSelector
                                    object:(nullable id)anObject{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:aSelector
                                                 name:aName
                                               object:anObject];
}

/**
 Assign as listener to notification
 
 @param aName notification name
 @param aSelector selector to run with notified
 */
- (void)wx_addNotificationObserverWithName:(nullable NSNotificationName)aName
                                  selector:(SEL)aSelector{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:aSelector
                                                 name:aName
                                               object:nil];
}

/**
 Unassign as listener to notification
 */
- (void)wx_removeNotificationsObserver{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/**
 Unassign as listener to notification

 @param aName notification name
 */
- (void)wx_removeNotificationsObserverWithName:(nullable NSNotificationName)aName{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:aName object:nil];
}


@end
