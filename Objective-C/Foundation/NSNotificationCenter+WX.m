//
//  NSNotificationCenter+WX.m
//  ustar
//
//  Created by imac on 2016/10/14.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "NSNotificationCenter+WX.h"

@implementation NSNotificationCenter (WX)

- (void)wx_postNotificationName:(NSNotificationName)aName
{
    [self  postNotificationName:aName object:nil];
}
@end
