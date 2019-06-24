//
//  NSString+Operation.m
//  NemoOfficeClient
//
//  Created by 杨旭东 on 01/11/2017.
//  Copyright © 2017 ainemo. All rights reserved.
//

#import "NSString+Operation.h"
#import "NSData+Operation.h"

@implementation NSString (Operation)

- (NSString *(^)(void))custom{
    return ^(){
        NSString *result = nil;
        #ifdef CUSTOMIZATION
            result = [NSString stringWithFormat:@"%@%@customizedkey=%@",self,hasParams?@"&":@"?",[CustomizationManager sharedInstance].enterpriseTag()];
        #else
            result = self;
        #endif
        return [NSString stringWithString:result];
    };
}

- (NSString *(^)(void))escape{
    return ^(){
        if ([self containsString:@"?"]) {
            NSRange range = [self rangeOfString:@"?"];
            NSString *base = [self substringToIndex:range.location];
            NSString *params = [self substringFromIndex:range.location];
            NSCharacterSet *set = [[NSCharacterSet characterSetWithCharactersInString:@"+ \\%.#"] invertedSet];
            return [NSString stringWithFormat:@"%@%@", base, [params stringByAddingPercentEncodingWithAllowedCharacters:set]];
        }else{
            return self;
        }
    };
}

- (NSData *(^)(void))data{
    return ^(){
        return [self dataUsingEncoding:NSUTF8StringEncoding];
    };
}

- (id (^)(void))serialization{
    return ^(){
        return self.data().serialization();
    };
}

- (NSString *(^)(void))noWhiteSpaceString{
    return ^(){
        NSString *newString = self;
        //去除掉首尾的空白字符和换行字符
        newString = [newString stringByReplacingOccurrencesOfString:@"\r" withString:@""];
        newString = [newString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        newString = [newString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        newString = [newString stringByReplacingOccurrencesOfString:@" " withString:@""];
        return newString;
    };
}

- (NSString *(^)(void))baseDecode{
    return ^(){
        NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
        return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    };
}

- (NSMutableAttributedString *(^)(NSString *, CGFloat))appendBold{
    return ^(NSString *bold, CGFloat font){
        NSMutableString *string = [NSMutableString stringWithFormat:@"%@", self];
        if (![string containsString:bold]) {
            [string appendString:bold];
        }
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        NSRange range = [string rangeOfString:bold];
        if (range.location != NSNotFound) {
            [attributedString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:font] range:range];
        }
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(NSString *))appendBoldDefault{
    return ^(NSString *bold){
        return self.appendBold(bold, 15.0);
    };
}

- (NSMutableAttributedString *(^)(NSString *, CGFloat))appendFont{
    return ^(NSString *string, CGFloat font){
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n", self==nil?@"":self]];
        [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:string==nil?@"":string attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:font]}]];
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(NSString *, UIColor *))appendColor{
    return ^(NSString *colorString, UIColor *color){
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
        NSRange range = [self rangeOfString:colorString];
        if (range.location != NSNotFound) {
            [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(NSString *, UIColor *,CGFloat))appendColorWithOverallCenter{
    return ^(NSString *colorString, UIColor *color,CGFloat lineSpacing){
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = NSTextAlignmentCenter;
        paragraphStyle.lineSpacing = lineSpacing;
        NSDictionary *attributes = @{NSParagraphStyleAttributeName:paragraphStyle};
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
        NSRange range = [self rangeOfString:colorString];
        if (range.location != NSNotFound) {
            [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
        return attributedString;
    };
}

- (NSMutableAttributedString *(^)(CGFloat, NSTextAlignment))alignment{
    return ^(CGFloat lineSpacing, NSTextAlignment alignment){
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = alignment;
        paragraphStyle.lineSpacing = lineSpacing;
        NSDictionary *attributes = @{NSParagraphStyleAttributeName:paragraphStyle};
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self attributes:attributes];
        return attributedString;
    };
}

@end


















