#import <UIKit/UIKit.h>

@interface UIViewController (WX)

- (CGFloat)wx_screenWidth;
- (CGFloat)wx_screenHeight;

- (instancetype)wx_nibLastObjectWithClass:(Class)coustomClass;
- (instancetype)wx_nibLastObjectWithNibName:(NSString *)nibName;

+ (instancetype)wx_viewControllerWithNibName;
+ (instancetype)wx_viewControllerWithNibName:(NSString *)nibName;
+ (instancetype)wx_viewControllerWithNibNameWithClass:(Class)coustomClass;

- (BOOL)isVisible;

@end
