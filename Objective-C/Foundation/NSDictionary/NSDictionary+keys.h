//
//  NSDictionary+keys.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (keys)

- (BOOL (^)(NSString *))contain;

@end

NS_ASSUME_NONNULL_END
