//
//  UITableView+AM.m
//  VRMAX
//
//  Created by AngieMita on 16/6/20.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UITableView+AM.h"
#import "MJRefresh.h"
@implementation UITableView (AM)

#pragma mark -
- (void)wx_addHeaderForTableWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_header = [MJRefreshHeader headerWithRefreshingTarget:target refreshingAction:action];
    [self.mj_header beginRefreshing];
}

- (void)wx_addFooterForTableWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    self.mj_footer = [MJRefreshFooter footerWithRefreshingTarget:target refreshingAction:action];
}
- (void)wx_removeFooterForTable
{
    [self.mj_footer endRefreshingWithNoMoreData];
}

- (void)wx_stopLoadingForTable
{
    // 拿到当前的下拉刷新控件，结束刷新状态
    [self.mj_header endRefreshing];
    // 拿到当前的上拉刷新控件，结束刷新状态
    [self.mj_footer endRefreshing];
}

@end
