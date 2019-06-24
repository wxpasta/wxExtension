//
//  UIView+Constraint.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "UIView+Constraint.h"

@implementation UIView (Constraint)

- (void)changeWidthConstraint:(CGFloat)width {
    for(NSLayoutConstraint *c in self.constraints){
        if (c.firstAttribute == NSLayoutAttributeWidth){
            c.constant = width;
        }
    }
}

- (void)changeHeightConstraint:(CGFloat)height {
    for(NSLayoutConstraint *c in self.constraints){
        if (c.firstAttribute == NSLayoutAttributeHeight){
            c.constant = height;
        }
    }
}

@end
