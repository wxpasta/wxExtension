//
//  NSString+Trim.h
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Trim)

// 去除空格
- (NSString *)trimWhitespace;

@end

NS_ASSUME_NONNULL_END
