#import <UIKit/UIKit.h>

@interface UIImageView (SDWebImage)

- (void)wx_setImageWithURLString:(NSString *)urlString;

- (void)wx_setImageWithURLString:(NSString *)urlString placeholderImageName:(NSString *)placeholder;

@end
