//
//  UIView+IBLayer.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/15.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (IBLayer)

@property (nonatomic, strong) IBInspectable UIColor *borderColor;

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;

@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;

@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;

@property (nonatomic, assign) IBInspectable CGSize shadowOffset;

@property (nonatomic, strong) IBInspectable UIColor *shadowColor;

@end

NS_ASSUME_NONNULL_END
