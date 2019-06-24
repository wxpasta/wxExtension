//
//  NSString+FPMutableAttributedString.h
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/1/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (FPMutableAttributedString)

/** 设置段落样式格式 */
- (NSMutableAttributedString *(^)(NSMutableParagraphStyle *))ffl_setParagraphStyle;

/** 设置属性 */
- (NSMutableAttributedString *(^)(NSDictionary<NSAttributedStringKey, id> *))ffl_setAttributes;

/** 设置某段文字的颜色（特殊字符串，颜色）*/
- (NSMutableAttributedString *(^)(NSString *, UIColor *))ffl_setSpecialColor;

/** 设置某段文字的颜色（特殊字符串，颜色）并且 设置段落样式格式 */
- (NSMutableAttributedString *(^)(NSString *, UIColor *,NSMutableParagraphStyle *))ffl_setSpecialColorAndParagraphStyle;

/** 设置某段文字的颜色（特殊字符串，字体）*/
- (NSMutableAttributedString *(^)(NSString *, UIFont *))ffl_setSpecialFont;

@end

NS_ASSUME_NONNULL_END
