//
//  NSScanner+WX.h
//  xcode8New
//
//  Created by AngieMita on 16/6/22.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

@import Foundation;

@interface NSScanner (WX)


//判断是否为整形：
+ (BOOL)isPureInt:(NSString*)string;

//判断是否为浮点形：
+ (BOOL)isPureFloat:(NSString*)string;

@end
