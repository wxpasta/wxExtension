//
//  NSData+Operation.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Operation)

- (NSString *(^)(void))base64;

- (NSString *(^)(void))string;

- (NSDictionary *(^)(void))serialization;

@end

NS_ASSUME_NONNULL_END
