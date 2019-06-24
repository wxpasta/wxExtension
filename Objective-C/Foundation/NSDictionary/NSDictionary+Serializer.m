//
//  NSDictionary+Serializer.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSDictionary+Serializer.h"

@implementation NSDictionary (Serializer)

- (NSData *(^)(void))jsonData{
    return ^(){
        return [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    };
}

- (NSString *(^)(void))serializer{
    return ^(){
        NSString *json = nil;
        NSData *data = self.jsonData();
        if (data) {
            json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        }else{
            json = @"{}";
        }
        NSString *string = [json stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        string = [string stringByReplacingOccurrencesOfString:@"\r" withString:@""];
        string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        return string;
        
    };
}

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString
{
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
@end
