//
//  NSScanner+WX.h
//  xcode8New
//
//  Created by 巴糖 on 16/6/22.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSScanner (WX)


//判断是否为整形：
+ (BOOL)isPureInt:(NSString*)string;

//判断是否为浮点形：
+ (BOOL)isPureFloat:(NSString*)string;

@end

NS_ASSUME_NONNULL_END
