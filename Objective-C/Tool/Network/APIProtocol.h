//
//  APIProtocol.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class APIBaseRequest;

@protocol APIProtocol <NSObject>

- (APIBaseRequest *)requestMethod;

- (NSSString *)requestURL;

@end

NS_ASSUME_NONNULL_END
