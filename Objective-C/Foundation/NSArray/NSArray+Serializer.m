//
//  NSArray+Serializer.h
//  WXCategories
//
//  Created by 许宝吉 on 2018/9/18.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "NSArray+Serializer.h"

@implementation NSArray (Serializer)

- (NSData *(^)(void))jsonData{
    return ^(){
        return [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    };
}

- (NSString *(^)(void))serializer{
    return ^(){
        NSData *data = self.jsonData();
        NSString *json = nil;
        if (data) {
            json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        }else{
            json = @"{}";
        }
        return [json stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    };
}

@end
