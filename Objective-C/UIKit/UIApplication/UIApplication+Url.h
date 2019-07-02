//
//  UIApplication+Url.h
//  BJSpecificationOC
//
//  Created by 巴糖 on 2018/2/3.
//  Copyright © 2018年 巴糖. All rights reserved.
//

@import UIKit;

@interface UIApplication (Url)


/**
 打开URL
 
 @param url NSURL
 @param completion 是否打开
 */
- (void)wx_openURL:(nonnull NSURL *)url
 completionHandler:(void (^ __nullable)(BOOL success))completion;

/**
 打开 URL String
 
 @param scheme scheme
 @param completion 是否打开
 */
- (void)openScheme:(nonnull NSString *)scheme
 completionHandler:(void (^ __nullable)(BOOL success))completion;

/**
 打电话
 
 @param phoneNumber 电话号码
 @param completion 是否打开
 */
- (void)wx_callUpWithPhoneNumber:(nonnull NSString *)phoneNumber
               completionHandler:(void (^ __nullable)(BOOL success))completion;


/**
 发短信
 
 @param content 短信内容
 @param completion 是否打开
 */
- (void)wx_sendShortMessagesWithContent:(nonnull NSString *)content
                      completionHandler:(void (^ __nullable)(BOOL success))completion;


/**
 发邮件
 
 @param address 邮件地址
 @param completion 是否打开
 */
- (void)wx_emailWithAddress:(nonnull NSString *)address
          completionHandler:(void (^ __nullable)(BOOL success))completion;

@end
