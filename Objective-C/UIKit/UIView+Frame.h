//
//  UIView+Frame.h
//
//
//  Created by 巴糖 on 2017/1/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property (nonatomic, assign) CGFloat wx_left;  //x
@property (nonatomic, assign) CGFloat wx_top;   //y
@property (nonatomic, assign) CGFloat wx_width;
@property (nonatomic, assign) CGFloat wx_height;

@property (nonatomic, assign) CGPoint wx_origin;
@property (nonatomic, assign) CGSize wx_size;

@property (nonatomic, assign) CGFloat wx_right;
@property (nonatomic, assign) CGFloat wx_bottom;



@end
