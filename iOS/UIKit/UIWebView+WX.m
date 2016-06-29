#import "UIWebView+WX.h"
#import "NSURLRequest+WX.h"

@implementation UIWebView (WX)


- (void)wx_loadRequestFileURLWithPath:(NSString *)path
{
    NSURLRequest *request =[NSURLRequest wx_requestFileURLWithPath:path];
    [self loadRequest:request];
}

@end
