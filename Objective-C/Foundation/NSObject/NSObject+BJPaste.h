//
//  NSObject+BJPaste.h
//  Objc
//
//  Created by 许宝吉 on 2018/5/15.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (BJPaste)

+ (void)wx_pasteWithString:(NSString *)value;

+ (void)wx_pasteWithURL:(NSURL *)value;

+ (void)wx_pasteWithImage:(UIImage *)value;

+ (void)wx_pasteWithColor:(UIColor *)value;

@end
