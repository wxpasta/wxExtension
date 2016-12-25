//
//  NSUUID+WX.m
//  ustar
//
//  Created by 许宝吉 on 2016/10/15.
//  Copyright © 2016年 AngieMita. All rights reserved.
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
