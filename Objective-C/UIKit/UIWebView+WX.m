#import "UIWebView+WX.h"

@implementation UIWebView (WX)

- (void)loadRequestWithURLPath:(NSString *)URLPath {
    NSString * filename =  [[NSBundle mainBundle].resourcePath stringByAppendingPathComponent:URLPath];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:filename];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self loadRequest:request];
}

@end
