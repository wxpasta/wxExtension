//
//  NSArray+Serializer.h
//  WXCategories
//
//  Created by 巴糖 on 2018/9/18.
//  Copyright © 2019年 巴糖. All rights reserved.
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
