//
//  NSString+SAPHelper.m
//  SapWrappingDylib
//
//  Created by magic-devel on 2020/10/19.
//  Copyright © 2020 SAP. All rights reserved.
//

#import "NSString+SAPHelper.h"
#import "NSData+SAPHelper.h"


@implementation NSString (SAPHelper)

#pragma mark - 获取设备名称
+ (NSString *)sapGetDeviceName {
    UIDevice *device = [UIDevice currentDevice];
    NSString* str_deviceName = device.name;
    
    return str_deviceName;
}

#pragma mark - 数组转字符串
+ (NSString *)sapArrayToJSONString:(NSMutableArray*)array {
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonString;
}

#pragma mark -
+ (NSString *)sapBase64Encode:(NSData *)data {
    static char base64EncodingTable[64] =
    {
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
        'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
        'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
        'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
    };
    int length = (int)[data length];
    unsigned long ixtext, lentext;
    long ctremaining;
    unsigned char input[3], output[4];
    short i, charsonline = 0, ctcopy;
    const unsigned char *raw;
    NSMutableString *result;
    
    lentext = [data length];
    if (lentext < 1)
        return @"";
    result = [NSMutableString stringWithCapacity: lentext];
    raw = [data bytes];
    ixtext = 0;
    
    while (true) {
        ctremaining = lentext - ixtext;
        if (ctremaining <= 0)
            break;
        for (i = 0; i < 3; i++) {
            unsigned long ix = ixtext + i;
            if (ix < lentext)
                input[i] = raw[ix];
            else
                input[i] = 0;
        }
        output[0] = (input[0] & 0xFC) >> 2;
        output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        output[3] = input[2] & 0x3F;
        ctcopy = 4;
        switch (ctremaining)
        {
            case 1:
                ctcopy = 2;
                break;
            case 2:
                ctcopy = 3;
                break;
        }
        
        for (i = 0; i < ctcopy; i++)
        [result appendString: [NSString stringWithFormat: @"%c", base64EncodingTable[output[i]]]];
        
        for (i = ctcopy; i < 4; i++)
        [result appendString: @"="];
        
        ixtext += 3;
        charsonline += 4;
        
        if ((length > 0) && (charsonline >= length))
            charsonline = 0;
    }
    return result;
}

/// 加密
+ (NSString *)AES128CBC_PKCS5Padding_EncryptStrig:(NSString *)string
                                         keyAndIv:(NSString *)keyAndIv {
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encryptData = [NSData AES128EncryptWithKey:keyAndIv iv:keyAndIv data:data];
    NSString *encryptring =  [encryptData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return encryptring;
    
}

//解密
+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string
                                          keyAndIv:(NSString *)keyAndIv{
    
    if (string==nil) {
        string = @"";
    }
    
    NSData *decryptBase64data = [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSData *decryptData = [NSData AES128DecryptWithKey:keyAndIv iv:keyAndIv data:decryptBase64data];
    NSString *decryptString = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptString;
    
}
//解密
+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string
                                               key:(NSString *)key
                                                iv:(NSString *)iv {
    
    if (string == nil) {
        string = @"";
    }
    string = [NSString stringWithFormat:@"%@===",string];
    
    NSData *decryptBase64data = [NSData sapBase64DataFromString:string];
    NSData *decryptData = [NSData AES128DecryptWithKey:key iv:iv data:decryptBase64data];
    NSString *decryptString = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    
    return decryptString;
    
}

@end
