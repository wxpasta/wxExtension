//
//  NSUUID+WX.m
//  WXCategories
//
//  Created by 巴糖 on 2016/10/15.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSUUID+WX.h"

@implementation NSUUID (WX)

+ (NSString *)wx_UUIDString
{
    return [[NSUUID UUID] UUIDString];
}


FOUNDATION_EXPORT NSString *wx_getUUIDString(void)
{
    return [NSUUID wx_UUIDString];
}

@end
