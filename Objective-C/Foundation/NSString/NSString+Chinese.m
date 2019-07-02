//
//  NSString+Chinese.m
//  NemoOfficeClient
//
//  Created by bwg on 2018/6/8.
//  Copyright © 2019年 ainemo. All rights reserved.
//

#import "NSString+Chinese.h"

@implementation NSString (Chinese)

//判断一个字符串是否都是汉字
+ (BOOL)isAllChineseString:(NSString *)str {
//    NSLog(@"---%d---%d", str.length, [self _getAStringOfChineseWord:str].count);
    return ([self getChineseWord:str].length == str.length);
}

//获得字符串中汉字的首字母，过滤了其它字符
+ (NSString *)getChineseWordInitialism:(NSString *)sourceStr {
    return [self getLetter:[self getChineseWord:sourceStr]];
}

//获得字符串中汉字的首字母，过滤了其它字符
+ (NSString *)getChineseWordPinYin:(NSString *)sourceStr {
    return [self getPinYin:[self getChineseWord:sourceStr]];
}

//获取一个字符串中所有汉字组成的字符串
+ (NSString *)getChineseWord:(NSString *)strInput {
    if (strInput == nil || [strInput isEqual:@""]){
        return nil;
    }
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    for (int i=0; i<[strInput length]; i++) {
        
        int a = [strInput characterAtIndex:i];
        if (a < 0x9fff && a > 0x4e00) {
            [arr addObject:[strInput substringWithRange:NSMakeRange(i, 1)]];
        }
    }
    if (!arr.count) {
        return nil;
    }
    NSMutableString *strM = [NSMutableString string];
    for (NSString *str in arr) {
        [strM appendString:str];
    }
    return strM;
}

//获取字符串的首字母
+ (NSString *)getLetter:(NSString *)strInput {
    if ([strInput length]) {
        NSMutableString *ms = [[NSMutableString alloc] initWithString:strInput];
        CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformMandarinLatin, NO);
        CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformStripDiacritics, NO);
        
        NSArray *pyArray = [ms componentsSeparatedByString:@" "];
        if(pyArray && pyArray.count > 0){
            ms = [[NSMutableString alloc] init];
            for (NSString *strTemp in pyArray) {
                [ms appendString:[strTemp substringToIndex:1]];
            }
            return [ms uppercaseString];
        }
        ms = nil;
    }
    return nil;
}

//获取纯汉字字符串的全拼拼音，不含空格
+ (NSString *)getPinYin:(NSString *)strInput {
    if ([strInput length]) {
        NSMutableString *ms = [[NSMutableString alloc] initWithString:strInput];
        CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformMandarinLatin, NO);
        CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformStripDiacritics, NO);
        return [ms stringByReplacingOccurrencesOfString:@" " withString:@""];
    }
    return nil;
}

@end
