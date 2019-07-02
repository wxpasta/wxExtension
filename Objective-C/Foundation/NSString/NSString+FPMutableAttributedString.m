//
//  NSString+FPMutableAttributedString.m
//  BJTestDemo
//
//  Created by 巴糖 on 2019/1/24.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "NSString+FPMutableAttributedString.h"

@implementation NSString (FPMutableAttributedString)

- (NSMutableAttributedString *(^)(NSMutableParagraphStyle *))ffl_setParagraphStyle{
    return ^(NSMutableParagraphStyle* paragraphStyle){
        NSDictionary *attributes = @{NSParagraphStyleAttributeName:paragraphStyle};
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(NSDictionary<NSAttributedStringKey, id> *))ffl_setAttributes{
    return ^(NSDictionary<NSAttributedStringKey, id> *attributes){
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(NSString *, UIColor *))ffl_setSpecialColor{
    return ^(NSString *colorString, UIColor *color){
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
        NSRange range = [self rangeOfString:colorString];
        if (range.location != NSNotFound) {
            [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(NSString *, UIColor *,NSMutableParagraphStyle *))ffl_setSpecialColorAndParagraphStyle{
    return ^(NSString *colorString, UIColor *color,NSMutableParagraphStyle *paragraphStyle){
        NSDictionary *attributes = @{NSParagraphStyleAttributeName:paragraphStyle};
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
        NSRange range = [self rangeOfString:colorString];
        if (range.location != NSNotFound) {
            [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
        return attributedString;
    };
}


- (NSMutableAttributedString *(^)(NSString *, UIFont *))ffl_setSpecialFont{
    return ^(NSString *string, UIFont *font){
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
         NSDictionary *attributes = @{NSFontAttributeName:font};
        [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:string attributes:attributes]];
        return attributedString;
    };
}

@end
