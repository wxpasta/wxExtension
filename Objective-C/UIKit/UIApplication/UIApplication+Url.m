//
//  UIApplication+Url.m
//  BJSpecificationOC
//
//  Created by 巴糖 on 2018/2/3.
//  Copyright © 2018年 巴糖. All rights reserved.
//

#import "UIApplication+Url.h"
#import "UIApplicationCustomConstant.h"

@implementation UIApplication (Url)


- (void)wx_openURL:(nonnull NSURL *)url completionHandler:(void (^ __nullable)(BOOL success))completion{
    if (url == nil) {
        completion(false);
    }
    if ([self respondsToSelector:@selector(openURL:options:completionHandler:)]) {
        [self openURL:url options:@{} completionHandler:^(BOOL success) {
            completion(success);
        }];
    } else {
//        #pragma clang diagnostic push
//        #pragma clang diagnostic ignored"-Wdeprecated-declarations"
        BOOL success = [self openURL:url];
//        #pragma clang diagnostic pop
        completion(success);
    }
}


- (void)openScheme:(nonnull NSString *)scheme completionHandler:(void (^ __nullable)(BOOL success))completion{
    if (scheme.length == 0) {
        completion(false);
    }
    NSURL *url = [NSURL URLWithString:scheme];
    
    if ([self canOpenURL:url]) {
        [self wx_openURL:url completionHandler:^(BOOL success) {
            completion(success);
        }];
    }else{
        completion(false);
    }
    
}

- (void)wx_callUpWithPhoneNumber:(nonnull NSString *)phoneNumber
               completionHandler:(void (^ __nullable)(BOOL success))completion
{
    if (phoneNumber.length == 0) {
        completion(false);
    }
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"tel://%@", phoneNumber];
    
    [self openScheme:urlString completionHandler:^(BOOL success) {
        completion(success);
    }];
}

- (void)wx_sendShortMessagesWithContent:(nonnull NSString *)content
                      completionHandler:(void (^ __nullable)(BOOL success))completion
{
    if (content.length == 0) {
        completion(false);
    }
    
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"sms://%@", content];
    
    [self openScheme:urlString completionHandler:^(BOOL success) {
        completion(success);
    }];
}

- (void)wx_emailWithAddress:(nonnull NSString *)address
          completionHandler:(void (^ __nullable)(BOOL success))completion
{
    if (address.length == 0) {
        completion(false);
    }
    
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"mailto://%@", address];
    [self openScheme:urlString completionHandler:^(BOOL success) {
        completion(success);
    }];
}
@end
