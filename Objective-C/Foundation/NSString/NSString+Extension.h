//
//  NSString+Extension.h
//  BaiduOCR
//
//  Created by 巴糖 on 16/8/31.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;
@import UIKit;

typedef enum : NSUInteger {
    BJTextToSpeechStateUnkown,
    BJTextToSpeechStateDefault,
    BJTextToSpeechStateWithoutWords,
    BJTextToSpeechStateParseFailure
} BJTextToSpeechState;

@interface NSString (Extension)

//图片转字符串
- (NSString *)wx_imageToBase64Str:(UIImage *)image;

+ (instancetype)wx_imageToBase64Str:(UIImage *)image;

//URLEncode
+ (NSString*)encodeString:(NSString*)unencodedString;

//URLdecode
- (NSString *)decodeString:(NSString*)encodedString;

////图片转字符串 + URLEncode 处理  表示经过BASE64编码后的字串，然后需要经过urlencode处理(特别重要)
+ (NSString *)wx_imageBase64AndEncodeStr:(UIImage *)image;

//解决IOS 中文unicode编码问题
+ (NSString *)replaceUnicode:(NSString *)unicodeStr;

+(instancetype)wx_stringWithString:(NSString *)string state:(BJTextToSpeechState)state;

- (NSString *)urlencode:(NSString*)data;

//词典转换为字符串
- (NSString*)dictionaryToJson:(NSDictionary *)dic;
/*!
 * @brief 把格式化的JSON格式的字符串转换成字典
 * @param jsonString JSON格式的字符串
 * @return 返回字典
 */

- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

@end
