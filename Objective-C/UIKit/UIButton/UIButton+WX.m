#import "UIButton+WX.h"

@implementation UIButton (WX)

#pragma mark 添加按钮
+ (nullable instancetype)wx_buttonWithImageName:(NSString *)imageName
                                  highImageName:(NSString *)highImageName
                               disableImageName:(NSString *)disableImageName
                                          frame:(CGRect)frame
                                            tag:(NSInteger)tag
                                      addTarget:(nullable id)target
                                         action:(SEL)action;
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn setBackgroundImage:[UIImage imageNamed:disableImageName] forState:UIControlStateDisabled];
    
    btn.frame = frame;
    
    btn.tag = tag;
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (nullable instancetype)wx_buttonWithTtile:(nullable NSString *)title
                                      color:(nullable UIColor *)color
                                     target:(nullable id)target
                                  addTarget:(SEL)action
                                      frame:(CGRect)frame
                 contentHorizontalAlignment:(UIControlContentHorizontalAlignment)contentHorizontalAlignment
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    
    btn.contentHorizontalAlignment = contentHorizontalAlignment;
    
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (nullable instancetype)wx_buttonWithImageName:(NSString *)imageName
                                  highImageName:(NSString *)highImageName
                                      addTarget:(nullable id)target
                                         action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (nullable instancetype)wx_buttonWithImageName:(NSString *)imageName
                                  highImageName:(NSString *)highImageName
                                          title:(nullable NSString *)title
                                      highTitle:(nullable NSString *)highTitle
                                     titleColor:(nullable UIColor *)titleColor
                                 highTitleColor:(nullable UIColor *)highTitleColor
                                      addTarget:(nullable id)target
                                         action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:highTitle forState:UIControlStateHighlighted];
    
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:highTitleColor forState:UIControlStateHighlighted];

    return btn;
}

@end
