#import "UINavigationBar+WX.h"

@implementation UINavigationBar (WX)

- (void)setPureColorNavigationBar:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    if (image) {
        [self setBackgroundImage:image
                  forBarPosition:UIBarPositionAny
                      barMetrics:UIBarMetricsDefault];
        UIImage *shadowImage = [[UIImage alloc]init];
        [self setShadowImage:shadowImage];
    }
}


@end
