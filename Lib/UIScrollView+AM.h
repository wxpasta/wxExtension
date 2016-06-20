#import <UIKit/UIKit.h>

@interface UIScrollView (AM)

- (void)wx_addHeaderForScrollWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_addFooterForScrollWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_removeFooterForScroll;

- (void)wx_stopLoadingForScroll;

@end
