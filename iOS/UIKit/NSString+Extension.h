//
//  NSString+Extension.h
//  BaiduOCR
//
//  Created by AngieMita on 16/8/31.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
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

- (NSString *)setTextWithStr:(NSString *)str
           textToSpeechState:(BJTextToSpeechState)state;
@end
