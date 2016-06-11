//
//  UIBarButtonItem+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WX)

+ (instancetype)wx_itemWithImageName:(NSString *)imageName
                       highImageName:(NSString *)highImageName
                           addTarget:(id)target
                              action:(SEL)action;

@end
