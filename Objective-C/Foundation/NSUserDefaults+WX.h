//
//  NSUserDefaults+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (WX)

+ (BOOL)isUserDefaultsContainsKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
