//
//  UIActionSheet+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2016/9/30.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIActionSheet (WX)

- (BOOL)isButtonWithTitle:(NSString *)title atIndex:(NSInteger)buttonIndex;

@end

NS_ASSUME_NONNULL_END
