//
//  UIBarButtonItem+VPMExtension.h
//  vmp
//
//  Created by magic-devel on 2020/9/14.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (VMPExtension)

@property(nonatomic, copy) NSString *clazz;

/**
*  创建一个item
*
*  @param target    点击item后调用哪个对象的方法
*  @param action    点击item后调用target的哪个方法
*  @param imageName     图片名称
*
*  @return 创建完的item
*/
+ (nullable UIBarButtonItem *)itemWithTarget:(id)target
                                      action:(SEL)action
                                   imageName:(NSString *)imageName;

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
                              image:(nullable UIImage *)image
                          highImage:(nullable UIImage *)highImage;

@end

NS_ASSUME_NONNULL_END
