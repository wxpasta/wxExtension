//
//  NSDateFormatter+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/26.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "NSDateFormatter+WX.h"

@implementation NSDateFormatter (WX)

+ (instancetype)wx_dateFormat:(NSString *)dateFormat
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = dateFormat;
    return fmt;
}





@end
