//
//  NSUUID+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2016/10/15.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSUUID (WX)

+ (NSString *)wx_UUIDString;

FOUNDATION_EXPORT NSString *wx_getUUIDString(void);

@end

NS_ASSUME_NONNULL_END
