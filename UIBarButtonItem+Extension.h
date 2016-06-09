//
//  UIBarButtonItem+Extension.h
//  VRMAX
//
//  Created by AngieMita on 16/6/3.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)


+ (instancetype)itemWithImage:(NSString *)image
                    highImage:(NSString *)highImage
                       target:(id)target
                       action:(SEL)action;

@end
