//
//  UIButton+FPTitle.h
//  XYAPPTest
//
//  Created by 巴糖 on 2019/1/18.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (FPTitle)

- (UIButton *(^)(NSString *))setAllTitle;

- (UIButton *(^)(NSString *))setDisabledTitle;
- (UIButton *(^)(NSString *))setHighlightedTitle;
- (UIButton *(^)(NSString *))setNormalTitle;
- (UIButton *(^)(NSString *))setSelectedTitle;

- (UIButton *(^)(NSString *,UIControlState))setTitle;
- (NSString *(^)(UIControlState))title;

@end

NS_ASSUME_NONNULL_END
