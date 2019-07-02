//
//  UIView+CustomScreen.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "UIView+CustomScreen.h"

@implementation UIView (CustomScreen)

+ (CGRect (^)(void))XYScreen{
    return ^(){
        return [UIScreen mainScreen].bounds;
    };
}

+ (CGSize (^)(void))XYScreenSize{
    return ^(){
        return self.XYScreen().size;
    };
}

+ (CGFloat (^)(void))XYScreenWidth{
    return ^(){
        return self.XYScreenSize().width;
    };
}

+ (CGFloat (^)(void))XYScreenHeight{
    return ^(){
        return self.XYScreenSize().height;
    };
}

+ (CGFloat (^)(void))XYScreenScale{
    return ^(){
        return self.XYScreenWidth() / 375;
    };
}

+ (CGFloat (^)(void))XYScreenScale_320{
    return ^(){
        return self.XYScreenWidth() / 320;
    };
}

@end
