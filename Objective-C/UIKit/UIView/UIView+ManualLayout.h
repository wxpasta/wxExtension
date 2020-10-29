//
//  UIView+ManualLayout.h
//  TestAPP
//
//  Created by magic-devel on 2020/9/11.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ManualLayout)

#pragma mark - size
@property (nonatomic, readwrite, assign) CGFloat ml_width;
@property (nonatomic, readwrite, assign) CGFloat ml_height;


#pragma mark - properties

@property (nonatomic, readwrite, assign) CGSize ml_size;

@end

NS_ASSUME_NONNULL_END
