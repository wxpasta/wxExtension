//
//  NSNotificationCenter+WX.m
//  WXCategories
//
//  Created by 巴糖 on 2019/10/14.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSNotificationCenter+WX.h"

@implementation NSNotificationCenter (WX)

- (void)wx_postNotificationName:(NSNotificationName)aName
{
    [self  postNotificationName:aName object:nil];
}
@end
