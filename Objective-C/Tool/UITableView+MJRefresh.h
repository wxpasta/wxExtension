//
//  UITableView+MJRefresh.h
//  VRMAX
//
//  Created by AngieMita on 16/7/10.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (MJRefresh)

- (void)wx_addHeaderForTableWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_addFooterForTableWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_removeFooterForTable;

- (void)wx_stopLoadingForTable;

@end
