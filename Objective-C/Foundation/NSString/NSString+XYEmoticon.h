//
//  NSString+XYEmoticon.h
//  NemoOfficeClient
//
//  Created by 巴糖 on 2019/3/13.
//  Copyright © 2019 ainemo. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (XYEmoticon)

/**
 判断是否含有表情符号

 @param string string description
 @return yes-有 no-没有
 */
+ (BOOL)stringContainsEmoji:(NSString *)string;

/**
 是否是系统自带九宫格输入

 @param string string description
 @return yes-是 no-不是
 */
+ (BOOL)isNineKeyBoard:(NSString *)string;

//
/**
 判断第三方键盘中的表情

 @param string string description
 @return return value description
 */
+ (BOOL)hasEmoji:(NSString*)string;

/**
 去除表情

 @param text text description
 @return return value description
 */
+ (NSString *)disableEmoji:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
