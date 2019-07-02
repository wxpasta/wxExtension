//
//  NSString+Color.m
//  Home
//
//  Created by 0547 on 2017/2/21.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "NSString+Color.h"

@implementation NSString (Color)

+ (NSString *)wx_toHex:(long long int)tmpid
{
    NSString *nLetterValue;
    NSString *str =@"";
    long long int ttmpig;
    for (int i = 0; i< 9; i++) {
        ttmpig=tmpid % 16;
        tmpid=tmpid / 16;
        switch (ttmpig)
        {
            case 10:
                nLetterValue =@"A";break;
            case 11:
                nLetterValue =@"B";break;
            case 12:
                nLetterValue =@"C";break;
            case 13:
                nLetterValue =@"D";break;
            case 14:
                nLetterValue =@"E";break;
            case 15:
                nLetterValue =@"F";break;
            default:nLetterValue=[[NSString alloc]initWithFormat:@"%lli",ttmpig];
                
        }
        str = [nLetterValue stringByAppendingString:str];
        if (tmpid == 0) {
            break;
        }
        
    }
    return str;
}

@end
