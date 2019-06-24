//
//  NSArray+Serializer.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/18.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Serializer)

- (NSData *(^)(void))jsonData;

- (NSString *(^)(void))serializer;

@end

NS_ASSUME_NONNULL_END
