//
//  FMDatabaseQueueManager.h
//  X8.2O
//
//  Created by 巴糖 on 2016/12/20.
//  Copyright © 2016年 巴糖. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMDatabaseQueueManager : NSObject

+ (instancetype)shareManager;

- (void)opendatabaseQueue:(NSString *)databaseQueueName;
- (void)closedatabaseQueue;
- (void)createTableDatabaseQueue:(NSArray *)sqls;

@end
