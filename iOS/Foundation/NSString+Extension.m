//
//  NSString+Extension.m
//  BaiduOCR
//
//  Created by AngieMita on 16/8/31.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import "NSString+Extension.h"


@implementation NSString (Extension)

//图片转字符串
- (NSString *)wx_imageToBase64Str:(UIImage *)image
{
    NSData *data = UIImageJPEGRepresentation(image, 1.0f);
    NSString *encodedImageStr = [data base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    return encodedImageStr;
}

+ (instancetype)wx_imageToBase64Str:(UIImage *)image
{
    return [[NSString alloc] wx_imageToBase64Str:image];
}

//URLEncode
+ (NSString*)encodeString:(NSString*)unencodedString{
    
    // CharactersToBeEscaped = @":/?&=;+!@#$()~',*";
    // CharactersToLeaveUnescaped = @"[].";
    
    NSString *encodedString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                              (CFStringRef)unencodedString,
                                                              NULL,
                                                              (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                              kCFStringEncodingUTF8));
    
    return encodedString;
}

//URLdecode
- (NSString *)decodeString:(NSString*)encodedString

{
    NSString *decodedString  = (__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL,
                                                                                                                     (__bridge CFStringRef)encodedString,
                                                                                                                     CFSTR(""),
                                                                                                                     CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    return decodedString;
}


//图片转字符串
+ (NSString *)wx_imageBase64AndEncodeStr:(UIImage *)image
{
    NSString *imageBase64Str =  [NSString wx_imageToBase64Str:image];
    NSString *imageBase64AndEncodeStr = [NSString encodeString:imageBase64Str];
    
    return imageBase64AndEncodeStr;
}

//unicode编码以\u开头
+ (NSString *)replaceUnicode:(NSString *)unicodeStr
{
    
    NSString *tempStr1 = [unicodeStr stringByReplacingOccurrencesOfString:@"\\u"withString:@"\\U"];
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\""withString:@"\\\""];
    NSString *tempStr3 = [[@"\""stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    NSString* returnStr = [NSPropertyListSerialization propertyListFromData:tempData
                                                           mutabilityOption:NSPropertyListImmutable
                                                                     format:NULL
                                                           errorDescription:NULL];
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n"withString:@"\n"];
}

- (NSString *)textWithStr:(NSString *)str state:(BJTextToSpeechState)state
{
    NSString *speakStr;
    switch (state) {
        case BJTextToSpeechStateDefault:
            speakStr = str;
            break;
            
        case BJTextToSpeechStateWithoutWords:
            speakStr = @"图片中没有发现字符串";
            if (str.length) {
                speakStr = str;
            }
            break;
            
        case BJTextToSpeechStateParseFailure:
            speakStr = @"图片解析失败";
            if (str.length) {
                speakStr = str;
            }
            break;
        default:
            break;
    }
    
    return speakStr;
}

+(instancetype)wx_stringWithString:(NSString *)string state:(BJTextToSpeechState)state
{
    return [[NSString  alloc]textWithStr:string state:state];
}

- (NSString *)urlencode:(NSString*)data
{
    NSMutableString *output = [NSMutableString string];
    const unsigned char *source = [data UTF8String];
    int sourceLen = strlen((const char *)source);
    for (int i = 0; i < sourceLen; ++i) {
        const unsigned char thisChar = source[i];
        if (thisChar == ' '){
            [output appendString:@"+"];
        } else if (thisChar == '.' || thisChar == '-' || thisChar == '_' || thisChar == '~' ||
                   (thisChar >= 'a' && thisChar <= 'z') ||
                   (thisChar >= 'A' && thisChar <= 'Z') ||
                   (thisChar >= '0' && thisChar <= '9')) {
            [output appendFormat:@"%c", thisChar];
        } else {
            [output appendFormat:@"%%%02X", thisChar];
        }
    }
    return output;
}

//词典转换为字符串
- (NSString*)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
}

/*!
 * @brief 把格式化的JSON格式的字符串转换成字典
 * @param jsonString JSON格式的字符串
 * @return 返回字典
 */

- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString
{
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
@end
