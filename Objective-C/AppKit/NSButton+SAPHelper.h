//
//  NSButton+SAPHelper.h
//  macSAP
//
//  Created by magic-devel on 2020/12/28.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSButton (SAPHelper)

/// 设置文本颜色
- (void)setTextColor:(NSColor *)textColor;

/// 获取文本颜色
- (NSColor *)textColor;


@end

NS_ASSUME_NONNULL_END
