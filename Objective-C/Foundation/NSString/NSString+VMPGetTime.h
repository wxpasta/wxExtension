//
//  NSString+VMPGetTime.h
//  vmp
//
//  Created by magic-devel on 2020/9/15.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (VMPGetTime)

/// 获取当前时间——格式：YYYY-MM-dd HH:mm:ss
+ (NSString *)stringWithGetCurrentTime;


@end

NS_ASSUME_NONNULL_END
