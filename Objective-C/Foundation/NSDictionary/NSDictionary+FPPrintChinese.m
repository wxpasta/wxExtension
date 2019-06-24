//
//  NSDictionary+FPPrintChinese.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/17.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "NSDictionary+FPPrintChinese.h"

@implementation NSDictionary (FPPrintChinese)

- (NSString *(^)(void))ffl_description
{
    __weak typeof(self) weakSelf = self;
        return ^(){
            NSString *description = [weakSelf description];
            description = [NSString stringWithCString:[description cStringUsingEncoding:NSUTF8StringEncoding] encoding:NSNonLossyASCIIStringEncoding];
            return description;
        };
}

- (NSString *(^)(void))ffl_json
{
    return ^(){
        NSString *logString;
        @try {
            logString=[[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
            
        } @catch (NSException *exception) {
            NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
            logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
            
        } @finally {
            
        }
        return logString;
    };
}
@end
