//
//  NSCharacterSet+SpecialCharacters.m
//  WXCategories
//
//  Created by 巴糖 on 2018/7/24.
//  Copyright © 2019年 JackYang. All rights reserved.
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
