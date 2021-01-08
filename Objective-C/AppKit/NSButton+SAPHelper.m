//
//  NSButton+SAPHelper.m
//  macSAP
//
//  Created by magic-devel on 2020/12/28.
//

#import "NSButton+SAPHelper.h"

@implementation NSButton (SAPHelper)

- (void)setTextColor:(NSColor *)textColor {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:[self attributedTitle]];
    // 富文本字符串为空
    if (attributedString.length == 0) {
        return;
    }
    // 返回指定索引处字符的属性。
    NSDictionary *attributes = [attributedString attributesAtIndex:0 effectiveRange:nil];
    if ([attributes[NSForegroundColorAttributeName] isEqual:textColor]) {
        return;
    }
    NSUInteger len = [attributedString length];
    NSRange titleRange = NSMakeRange(0, len);
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:textColor
                             range:titleRange];
    [attributedString fixAttributesInRange:titleRange];
    [self setAttributedTitle:attributedString];
}

/// 获取文本颜色
- (NSColor *)textColor {
    NSAttributedString *attrTitle = [self attributedTitle];
    NSUInteger len = [attrTitle length];
    NSRange range = NSMakeRange(0, MIN(len, 1)); // get the font attributes from the first character
    NSDictionary *attrs = [attrTitle fontAttributesInRange:range];
    NSColor *textColor = [NSColor controlTextColor];
    if (attrs) {
        textColor = [attrs objectForKey:NSForegroundColorAttributeName];
    }
    return textColor;

}
@end
