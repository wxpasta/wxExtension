//
//  NSCharacterSet+SpecialCharacters.m
//  NemoSDK
//
//  Created by 许宝吉 on 2018/7/24.
//  Copyright © 2018年 JackYang. All rights reserved.
//

#import "NSCharacterSet+SpecialCharacters.h"

@implementation NSCharacterSet (SpecialCharacters)

+ (NSCharacterSet *)nemo_URLQueryAllowedCharacterSetAddkey{
    NSMutableCharacterSet *characterSet = [[NSMutableCharacterSet alloc]init];
    [characterSet formIntersectionWithCharacterSet:[NSCharacterSet URLQueryAllowedCharacterSet]];
    [characterSet addCharactersInString:@"+"];
    return characterSet.invertedSet;
}


@end
