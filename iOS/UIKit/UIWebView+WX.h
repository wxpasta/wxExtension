#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIWebView (WX)

/**
 *  跟loadRequest功能相同(简化步骤)
 *
 *  @param path 本地路径
 */
- (void)wx_loadRequestFileURLWithPath:(NSString *)path;

@end
