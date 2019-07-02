//
//  NSString+Chinese.h
//  NemoOfficeClient
//
//  Created by bwg on 2018/6/8.
//  Copyright © 2019年 ainemo. All rights reserved.
//

@import Foundation;

@interface NSString (Chinese)

+ (BOOL)isAllChineseString:(NSString *)str;
+ (NSString *)getChineseWordInitialism:(NSString *)sourceStr;
+ (NSString *)getChineseWordPinYin:(NSString *)sourceStr;

+ (NSString *)getChineseWord:(NSString *)strInput;
+ (NSString *)getLetter:(NSString *)strInput;
+ (NSString *)getPinYin:(NSString *)strInput;

@end
