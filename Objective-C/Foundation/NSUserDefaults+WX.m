//
//  NSUserDefaults+WX.m
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "NSUserDefaults+WX.h"

@implementation NSUserDefaults (WX)


+ (BOOL)isUserDefaultsContainsKey:(NSString *)key{
    if (key.length > 0) {
        NSDictionary *dic =  [[NSUserDefaults standardUserDefaults] dictionaryRepresentation];
        bool isContainsObject = [[dic allKeys] containsObject:key];
        return isContainsObject;
    }else{
        NSLog(@"warning key is nil");
        return NO;
    }
}
@end
