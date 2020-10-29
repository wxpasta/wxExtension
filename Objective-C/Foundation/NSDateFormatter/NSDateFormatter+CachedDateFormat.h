//
//  NSDateFormatter+CachedDateFormat.h
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSDateFormatter (CachedDateFormat)

// 格式 YYYY-MM-dd HH:mm:ss
+ (NSDateFormatter *)cachedDateFormatter;

@end

NS_ASSUME_NONNULL_END
