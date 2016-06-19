#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WX)

+ (instancetype)wx_itemWithImageName:(NSString *)imageName
                       highImageName:(NSString *)highImageName
                           addTarget:(id)target
                              action:(SEL)action;

@end
