//
//  NSURLConnection+SSL.m
//  SAP
//
//  Created by wangchangfei on 2018/4/24.
//  Copyright © 2018年 SAP. All rights reserved.
//

#import "NSURLConnection+SSL.h"
#import <objc/runtime.h>
//#import <AFNetworking/AFNetworking.h>

@implementation NSURLConnection (SSL)

#if defined VERIFYHTTPSCER

#else

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        //NSURLConnection
        Class class = [NSURLConnection class];
        SEL originalSelector = @selector(connection:willSendRequestForAuthenticationChallenge:);
        SEL swizzledSelector = @selector(hub_connection:willSendRequestForAuthenticationChallenge:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(self, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod)
        {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        }
        else
        {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
        
        //NSURLSession
        Class classSession = [NSClassFromString(@"AFURLSessionManager") class];
        SEL originalSelectorSession = @selector(URLSession:didReceiveChallenge:completionHandler:);
        SEL swizzledSelectorSession = @selector(hub_URLSession:didReceiveChallenge:completionHandler:);
        
        Method originalMethodSession = class_getInstanceMethod(classSession, originalSelectorSession);
        Method swizzledMethodSession = class_getInstanceMethod(self, swizzledSelectorSession);
        
        BOOL didAddMethodSession =
        class_addMethod(classSession,
                        originalSelectorSession,
                        method_getImplementation(swizzledMethodSession),
                        method_getTypeEncoding(swizzledMethodSession));
        
        if (didAddMethodSession)
        {
            class_replaceMethod(class,
                                swizzledSelectorSession,
                                method_getImplementation(originalMethodSession),
                                method_getTypeEncoding(originalMethodSession));
        }
        else
        {
            method_exchangeImplementations(originalMethodSession, swizzledMethodSession);
        }
        
    });
}


- (void)hub_connection:(NSURLConnection *)connection
willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    [challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust]
         forAuthenticationChallenge:challenge];
}

- (void)hub_URLSession:(NSURLSession *)session
   didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge
     completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler
{
    NSURLSessionAuthChallengeDisposition disposition = NSURLSessionAuthChallengePerformDefaultHandling;
    __block NSURLCredential *credential = nil;
    
    credential = [NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust];
    disposition = NSURLSessionAuthChallengeUseCredential;
    completionHandler(disposition, credential);
}

#endif


@end
