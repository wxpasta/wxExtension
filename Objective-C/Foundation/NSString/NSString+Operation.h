//
//  NSString+Operation.h
//  NemoOfficeClient
//
//  Created by 杨旭东 on 01/11/2017.
//  Copyright © 2017 ainemo. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface NSString (Operation)

- (NSString *(^)(void))custom;

- (NSString *(^)(void))escape;

- (NSData *(^)(void))data;

- (id (^)(void))serialization;

- (NSString *(^)(void))noWhiteSpaceString;

- (NSString *(^)(void))baseDecode;

- (NSMutableAttributedString *(^)(NSString *, CGFloat font))appendBold;

- (NSMutableAttributedString *(^)(NSString *))appendBoldDefault;

- (NSMutableAttributedString *(^)(NSString *, CGFloat))appendFont;

- (NSMutableAttributedString *(^)(NSString *, UIColor *))appendColor;


- (NSMutableAttributedString *(^)(NSString *, UIColor *,CGFloat))appendColorWithOverallCenter;

- (NSMutableAttributedString *(^)(CGFloat, NSTextAlignment))alignment;

@end
