#import "UIImageView+AM.h"
#import <UIImageView+WebCache.h>
@implementation UIImageView (AM)

- (void)wx_setImageWithURLString:(NSString *)urlString
{
    [self sd_setImageWithURL:[NSURL URLWithString:urlString]];
}

- (void)wx_setImageWithURLString:(NSString *)urlString placeholderImageName:(NSString *)placeholder
{
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:[UIImage imageNamed:placeholder]];
}

@end
