#import <UIKit/UIKit.h>

@interface UICollectionView (MJRefresh)

- (void)wx_addHeaderForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_addFooterForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_removeFooterForCollection;

- (void)wx_stopLoadingForCollection;

- (void)wx_removeFooter;
@end
