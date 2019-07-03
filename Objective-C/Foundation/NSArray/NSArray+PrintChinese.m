//
//  NSArray+PrintChinese.m
//  WXCategories
//
//  Created by 巴糖 on 2018/10/17.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSArray+PrintChinese.h"
@import ObjectiveC.message;

@implementation NSArray (PrintChinese)

/**
 重写 description (po)
 重写 descriptionWithLocale: (NSLog)
 */
+ (void)load{
    Method old = class_getInstanceMethod(self, @selector(description));
    Method new = class_getInstanceMethod(self, @selector(rewrite_description));
    method_exchangeImplementations(old, new);
    
    {
        Method old = class_getInstanceMethod(self, @selector(descriptionWithLocale:));
        Method new = class_getInstanceMethod(self, @selector(rewrite_descriptionWithLocale:));
        method_exchangeImplementations(old, new);
    }
}

- (NSString *)rewrite_description{
    NSString *description = [self rewrite_description];
    const char * cString = [description cStringUsingEncoding:NSUTF8StringEncoding];
    if (cString) {
        description = [NSString stringWithCString:cString encoding:NSNonLossyASCIIStringEncoding];
    }
    return description;
}

- (NSString *)rewrite_descriptionWithLocale:(id)local{
    NSString *logString;
    @try {
        NSData *data = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:nil];
        if (data) {
            logString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        }
    } @catch (NSException *exception) {
        
        NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
        logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
        
    } @finally {
        
    }
    return logString;
    
}

@end
