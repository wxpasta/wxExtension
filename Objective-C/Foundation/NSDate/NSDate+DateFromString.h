//
//  NSDate+DateFromString.h
//  WXCategories
//
//  Created by 巴糖 on 2019/7/1.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (DateFromString)

// timeInterval - 1554552673
- (NSDate *)dateFromString:(NSString *)timeInterval;


// timeInterval - 2019-04-06 20:11:13
- (NSDate *)strptimeFromString:(NSString *)timeInterval;

@end

NS_ASSUME_NONNULL_END
