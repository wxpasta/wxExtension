//
//  NSArray+FPPrintChinese.m
//  WXCategories
//
//  Created by 巴糖 on 2018/10/17.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "NSArray+FPPrintChinese.h"

@implementation NSArray (FPPrintChinese)

- (NSString *(^)(void))ffl_description {
    return ^(){
        NSString *description = [self description];
        const char * cString = [description cStringUsingEncoding:NSUTF8StringEncoding];
        if (cString) {
            description = [NSString stringWithCString:cString encoding:NSNonLossyASCIIStringEncoding];
            return description;
        }else{
            return @"";
        }
    };
}

- (NSString *(^)(void))ffl_json
{
    return ^(){
        NSString *logString;
        @try {
            NSData * data = [NSJSONSerialization dataWithJSONObject:self
                                                            options:NSJSONWritingPrettyPrinted error:nil];
            if (data) {
                logString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            }
        } @catch (NSException *exception) {
            NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
            logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
            
        } @finally {
            
        }
        return logString;
    };
}

@end
