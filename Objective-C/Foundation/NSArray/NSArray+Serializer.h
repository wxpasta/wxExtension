//
//  NSArray+Serializer.h
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Serializer)

- (NSData *(^)(void))jsonData;

- (NSString *(^)(void))serializer;

@end

NS_ASSUME_NONNULL_END
