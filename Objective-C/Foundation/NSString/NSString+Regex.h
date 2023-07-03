//
//  NSString+Regex.h
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Regex)

- (BOOL)isValidateByRegex:(NSString *)regex;

- (BOOL)isPureNumber;

- (BOOL)isCaptcha;

@end

NS_ASSUME_NONNULL_END
