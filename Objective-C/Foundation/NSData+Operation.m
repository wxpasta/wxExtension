//
//  NSData+Operation.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "NSData+Operation.h"

@implementation NSData (Operation)

- (NSString *(^)(void))base64{
    return ^(){
        NSString *string = [self base64EncodedStringWithOptions:0];
        return string;
    };
}

- (NSString *(^)(void))string{
    return ^(){
        NSString *string = [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
        if (string == nil) {
            NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGBK_95);
            string = [[NSString alloc] initWithData:self encoding:enc];
        }
        return string;
    };
}

- (NSDictionary *(^)(void))serialization{
    return ^(){
        NSString *string = [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
        NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
        return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    };
}

@end
