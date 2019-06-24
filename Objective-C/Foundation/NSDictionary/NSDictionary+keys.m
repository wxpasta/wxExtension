//
//  NSDictionary+keys.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSDictionary+keys.h"

@implementation NSDictionary (keys)

- (BOOL (^)(NSString *))contain {
    return ^(NSString *key){
        if ([self.allKeys containsObject:key]) {
            return YES;
        }else return NO;
    };
}

@end
