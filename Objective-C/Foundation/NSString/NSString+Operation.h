//
//  NSString+Operation.h
//  NemoOfficeClient
//
//  Created by 杨旭东 on 01/11/2017.
//  Copyright © 2017 ainemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Operation)

- (NSString *(^)())custom;

- (NSString *(^)())escape;

- (NSData *(^)())data;

- (id (^)())serialization;

- (NSString *(^)())noWhiteSpaceString;

- (NSString *(^)())baseDecode;

- (NSMutableAttributedString *(^)(NSString *, CGFloat font))appendBold;

- (NSMutableAttributedString *(^)(NSString *))appendBoldDefault;

- (NSMutableAttributedString *(^)(NSString *, CGFloat))appendFont;

- (NSMutableAttributedString *(^)(NSString *, UIColor *))appendColor;


- (NSMutableAttributedString *(^)(NSString *, UIColor *,CGFloat))appendColorWithOverallCenter;

- (NSMutableAttributedString *(^)(CGFloat, NSTextAlignment))alignment;

@end
