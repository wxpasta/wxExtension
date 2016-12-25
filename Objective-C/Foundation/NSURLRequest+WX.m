#import "NSURLRequest+WX.h"

@implementation NSURLRequest (WX)

+ (instancetype)wx_requestFileURLWithPath:(NSString *)path
{
    NSString * filename =  [[NSBundle mainBundle].resourcePath stringByAppendingPathComponent:path];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:filename];
    return [NSURLRequest requestWithURL:url];
}

@end
