//
//  NSObject+BJPaste.m
//  Objc
//
//  Created by 许宝吉 on 2018/5/15.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "NSObject+BJPaste.h"

@implementation NSObject (BJPaste)

+ (void)wx_pasteWithString:(NSString *)value{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    pasteBoard.string = value;
}

+ (void)wx_pasteWithURL:(NSURL *)value{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    pasteBoard.URL = value;
}

+ (void)wx_pasteWithImage:(UIImage *)value{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    pasteBoard.image = value;
}

+ (void)wx_pasteWithColor:(UIColor *)value{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    pasteBoard.color = value;
}


@end
