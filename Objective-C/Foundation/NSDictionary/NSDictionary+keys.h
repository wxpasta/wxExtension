//
//  NSDictionary+keys.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/24.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (keys)

- (BOOL (^)(NSString *))contain;

@end

NS_ASSUME_NONNULL_END
