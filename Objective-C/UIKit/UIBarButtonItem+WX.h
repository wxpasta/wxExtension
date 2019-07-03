//
//  UIBarButtonItem+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2016/9/30.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;

@interface UIBarButtonItem (WX)

+ (instancetype)wx_itemWithImageName:(NSString *)imageName
                       highImageName:(NSString *)highImageName
                           addTarget:(id)target
                              action:(SEL)action;

@end
