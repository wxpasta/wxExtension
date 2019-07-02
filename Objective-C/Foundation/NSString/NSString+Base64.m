//
//  NSString+Base64.m
//  WXCategories
//
//  Created by 巴糖 on 2018/9/25.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSString+Base64.h"

@implementation NSString (Base64)

+ (nullable NSString *)base64EncodeWithString:(NSString *)string
{
    if (![string length])
    {
        return nil;
    }
    //先将string转换成data
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    NSData *base64Data = [data base64EncodedDataWithOptions:0];
    
    NSString *baseString = [NSString stringWithUTF8Data:base64Data];
    
    return baseString;
}

+ (nullable NSString *)base64DecodeWithString:(NSString *)base64String
{
    if (![base64String length])
    {
        return nil;
    }
    NSData *data = [[NSData alloc]initWithBase64EncodedString:base64String options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    NSString *string = [NSString stringWithUTF8Data:data];
    
    return string;
}

+ (instancetype)stringWithUTF8Data:(NSData *)data{
    if (data == nil) {
        return nil;
    }
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}


@end
