//
//  UIViewController+WX.h
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (WX)

- (CGFloat)wx_screenWidth;
- (CGFloat)wx_screenHeight;

- (instancetype)wx_nibLastObjectWithClass:(Class)coustomClass;
- (instancetype)wx_nibLastObjectWithNibName:(NSString *)nibName;

@end
