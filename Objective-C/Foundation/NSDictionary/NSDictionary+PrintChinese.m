//
//  NSDictionary+PrintChinese.m
//  WXCategories
//
//  Created by 许宝吉 on 2018/10/17.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "NSDictionary+PrintChinese.h"
#import <objc/message.h>

@implementation NSDictionary (PrintChinese)

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
    description = [NSString stringWithCString:[description cStringUsingEncoding:NSUTF8StringEncoding] encoding:NSNonLossyASCIIStringEncoding];
    return description;
}

- (NSString *)rewrite_descriptionWithLocale:(id)local{
    NSString *logString;
    @try {
        logString=[[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
        
    } @catch (NSException *exception) {
        
        NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
        logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
        
    } @finally {
        
    }
    return logString;
    
}

@end
