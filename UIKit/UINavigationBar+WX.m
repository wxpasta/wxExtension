#import "UINavigationBar+WX.h"

@implementation UINavigationBar (WX)

- (void)wx_setPureColorNavigationBar:(NSString *)imageName
{
    [self setBackgroundImage:[UIImage imageNamed:imageName] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    [self setShadowImage:[[UIImage alloc]init]];
    
}


@end
