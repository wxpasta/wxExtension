#import <UIKit/UIKit.h>

@interface UIImageView (AM)

- (void)wx_setImageWithURLString:(NSString *)urlString;

- (void)wx_setImageWithURLString:(NSString *)urlString placeholderImageName:(NSString *)placeholder;

@end
