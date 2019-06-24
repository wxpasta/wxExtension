//
//  NSString+customAttributed.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSString+customAttributed.h"

@implementation NSString (customAttributed)


- (NSMutableAttributedString *(^)(NSString *, CGFloat))nemo_appendFont{
    return ^(NSString *string, CGFloat fontSize){
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n", self]];
        [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:string attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:fontSize]}]];
        return attributedString;
    };
}

@end
