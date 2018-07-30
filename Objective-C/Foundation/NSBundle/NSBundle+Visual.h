//
//  NSBundle+Visual.h
//  BJCategory
//
//  Created by AngieMita on 2018/7/29.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSBundle (Visual)

+ (nullable NSArray *)wx_bundleLoadNibNamed:(NSString *)name;

+ (id _Nullable)wx_bundleLoadNibFirstNamed:(NSString *)name;

+ (id _Nullable)wx_bundleLoadNibLastNamed:(NSString *)name;

@end
