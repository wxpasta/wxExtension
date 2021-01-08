//
//  NSTextField+SAPHelper.m
//  macSAP
//
//  Created by magic-devel on 2021/1/6.
//

#import "NSTextField+SAPHelper.h"

@implementation NSTextField (SAPHelper)


- (void)setPlaceholderColor:(NSColor *)textColor {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:[self placeholderAttributedString]];
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
    [self setPlaceholderAttributedString:attributedString];
}
@end
