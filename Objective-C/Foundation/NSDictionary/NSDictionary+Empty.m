//
//  NSDictionary+Empty.m
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/3/11.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSDictionary+Empty.h"

@implementation NSDictionary (Empty)

+ (BOOL)dictionaryWithEmpty:(nullable NSDictionary *)dictionary{
    if ([dictionary isKindOfClass:[NSDictionary class]] && [dictionary count]){
        return NO;
    }else{
        return YES;
    }
}

@end
