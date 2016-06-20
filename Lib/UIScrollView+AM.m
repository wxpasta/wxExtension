#import "UIScrollView+AM.h"
#import "MJRefresh.h"

@implementation UIScrollView (AM)

#pragma mark -
- (void)wx_addHeaderForScrollWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_header = [MJRefreshHeader headerWithRefreshingTarget:target refreshingAction:@selector(action)];
    [self.mj_header beginRefreshing];
}

- (void)wx_addFooterForScrollWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_footer = [MJRefreshFooter footerWithRefreshingTarget:target refreshingAction:@selector(action)];
}
- (void)wx_removeFooterForScroll
{
    [self.mj_footer endRefreshingWithNoMoreData];
}

- (void)wx_stopLoadingForScroll
{
    // 拿到当前的下拉刷新控件，结束刷新状态
    [self.mj_header endRefreshing];
    // 拿到当前的上拉刷新控件，结束刷新状态
    [self.mj_footer endRefreshing];
}

@end
