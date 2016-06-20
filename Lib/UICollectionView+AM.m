//
//  UICollectionView+AM.m
//  VRMAX
//
//  Created by AngieMita on 16/6/20.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UICollectionView+AM.h"
#import "MJRefresh.h"

@implementation UICollectionView (AM)


#pragma mark -
- (void)wx_addHeaderForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:@selector(action)];
    [self.mj_header beginRefreshing];
}

- (void)wx_addFooterForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:target refreshingAction:@selector(action)];
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
@end
