//
//  NSDate+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/12.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (WX)

/***  是否为今年*/
- (BOOL)isThisYear;

/***  是否为今天*/
- (BOOL)isToday;

/***  是否为昨天*/
- (BOOL)isYesterday;

/***  是否为明天*/
- (BOOL)isTomorrow;



@end
