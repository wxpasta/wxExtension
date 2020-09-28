//
//  UIBarButtonItem+VMPExtension.m
//  vmp
//
//  Created by magic-devel on 2020/9/14.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UIBarButtonItem+VMPExtension.h"
#import <objc/runtime.h>
#import "UIView+ManualLayout.h"

static void *UIBarButtonItemCustomPorpertyKey = (void *)@"UIBarButtonItemCustomPorpertyKey";

@implementation UIBarButtonItem (Extension)


+ (nullable UIBarButtonItem *)itemWithTarget:(id)target
                                      action:(SEL)action
                                   imageName:(NSString *)imageName {
    if (imageName.length == 0) {
        return nil;
    }
    return [self itemWithTarget:target action:action
                          image:[UIImage imageNamed:imageName]
                      highImage:[UIImage imageNamed:imageName]];
}

/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target
                             action:(SEL)action
                              image:(UIImage *)image
                          highImage:(UIImage *)highImage {
    CGFloat contentWidth = 50;
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, contentWidth, 30)];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    
//    btn.backgroundColor = SAPRandomColor;
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 设置图片
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateHighlighted];
    // 设置尺寸
    btn.ml_size = contentView.ml_size;
    
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, contentWidth - image.size.width)];
    
    [contentView addSubview:btn];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:contentView];
    item.clazz = [UIBarButtonItem description];
    
    return item;
}

- (NSString *)clazz {
    return objc_getAssociatedObject(self, UIBarButtonItemCustomPorpertyKey);
}

- (void)setClazz:(NSString *)clazz {
    objc_setAssociatedObject(self, UIBarButtonItemCustomPorpertyKey, clazz,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
