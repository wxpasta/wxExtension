//
//  UITableView+MJRefresh.m
//  VRMAX
//
//  Created by AngieMita on 16/7/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UITableView+MJRefresh.h"
#import "MJRefresh.h"

@implementation UITableView (MJRefresh)

- (void)wx_addHeaderForTableWithAddTarget:(nullable id)target action:(nullable SEL)action
{
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    
    header.lastUpdatedTimeLabel.textColor = [UIColor colorWithHexString:@"#8d8d8d"];
    header.lastUpdatedTimeLabel.font = [UIFont systemFontOfSize:13];
    
    header.stateLabel.textColor = [UIColor colorWithHexString:@"#8d8d8d"];
    header.stateLabel.font = [UIFont systemFontOfSize:13];
    
    self.mj_header = header;
    
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
