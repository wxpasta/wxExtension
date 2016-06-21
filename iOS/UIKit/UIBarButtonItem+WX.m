#import "UIBarButtonItem+WX.h"

@implementation UIBarButtonItem (WX)


+ (instancetype)wx_itemWithImageName:(NSString *)imageName
                       highImageName:(NSString *)highImageName
                           addTarget:(id)target
                              action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    
    CGRect rect = button.frame;
    rect.size = button.currentBackgroundImage.size;
    button.frame  = rect;
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}



@end
