#import <UIKit/UIKit.h>

@interface UIScreen (WX)

@property (nonatomic, assign, readonly) CGFloat wx_screenWidth;
@property (nonatomic, assign, readonly) CGFloat wx_screenHeight;
@property (nonatomic, assign, readonly) CGSize wx_screenSize;
@property (nonatomic, assign, readonly) CGPoint wx_screenOrigin;


@property (nonatomic, assign, readonly) CGFloat wx_screenScale;

@end
