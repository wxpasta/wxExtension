//
//  FMDatabaseQueueManager.m
//  X8.2O
//
//  Created by 巴糖 on 2016/12/20.
//  Copyright © 2016年 巴糖. All rights reserved.
//

#import "FMDatabaseQueueManager.h"
#import "NSString+Sandbox.h"
#import "FMDB.h"

static FMDatabaseQueueManager *_manager;

@interface FMDatabaseQueueManager()<NSCopying>

@property (nonatomic, strong) FMDatabaseQueue *databaseQueue;

@end

@implementation FMDatabaseQueueManager

+ (instancetype)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[FMDatabaseQueueManager alloc] init];
    });
    return _manager;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[FMDatabaseQueueManager allocWithZone:zone] init];
    });
    return _manager;
}

- (id)copyWithZone:(NSZone *)zone{
    return _manager;
}

- (void)opendatabaseQueue:(NSString *)databaseQueueName{
    NSString *path = databaseQueueName.wx_documentsDir;
    self.databaseQueue = [FMDatabaseQueue databaseQueueWithPath:path];
}

- (void)closedatabaseQueue{
    [self.databaseQueue close];
}

- (void)createTableDatabaseQueue:(NSArray *)sqls{
    NSString *sql = [sqls componentsJoinedByString:@""];
    [self.databaseQueue inDatabase:^(FMDatabase *db) {
        [db executeStatements:sql];
    }];
}
@end
