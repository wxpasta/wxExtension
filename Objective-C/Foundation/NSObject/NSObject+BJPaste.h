//
//  NSObject+BJPaste.h
//  Objc
//
//  Created by 巴糖 on 2018/5/15.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface NSObject (BJPaste)

+ (void)wx_pasteWithString:(NSString *)value;

+ (void)wx_pasteWithURL:(NSURL *)value;

+ (void)wx_pasteWithImage:(UIImage *)value;

+ (void)wx_pasteWithColor:(UIColor *)value;

@end
