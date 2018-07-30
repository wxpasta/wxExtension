#import "UICollectionView+MJRefresh.h"
#import "MJRefresh.h"

@implementation UICollectionView (MJRefresh)

#pragma mark -
- (void)wx_addHeaderForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    
    header.lastUpdatedTimeLabel.textColor = [UIColor colorWithHexString:@"#8d8d8d"];
    header.lastUpdatedTimeLabel.font = [UIFont systemFontOfSize:13];
    
    header.stateLabel.textColor = [UIColor colorWithHexString:@"#8d8d8d"];
    header.stateLabel.font = [UIFont systemFontOfSize:13];
    
    
    self.mj_header = header;

    [self.mj_header beginRefreshing];
}

- (void)wx_addFooterForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
}
- (void)wx_removeFooterForCollection
{
    [self.mj_footer endRefreshingWithNoMoreData];
}

- (void)wx_stopLoadingForCollection
{
    // 拿到当前的下拉刷新控件，结束刷新状态
    [self.mj_header endRefreshing];
    // 拿到当前的上拉刷新控件，结束刷新状态
    [self.mj_footer endRefreshing];
}

- (void)wx_removeFooter
{
    [self.mj_footer endRefreshingWithNoMoreData];
}
@end
