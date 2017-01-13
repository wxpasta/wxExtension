//
//  FMDatabaseManager.m
//  X8.2O
//
//  Created by 巴糖 on 2016/12/20.
//  Copyright © 2016年 巴糖. All rights reserved.
//

#import "FMDatabaseManager.h"
#import "NSString+Sandbox.h"
#import "FMDB.h"

static FMDatabaseManager *_manager;

@interface FMDatabaseManager()<NSCopying>

@property (nonatomic, strong) FMDatabase *database;

@end

@implementation FMDatabaseManager

+ (instancetype)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[FMDatabaseManager alloc] init];
    });
    return _manager;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[FMDatabaseManager allocWithZone:zone] init];
    });
    return _manager;
}

- (id)copyWithZone:(NSZone *)zone{
    return _manager;
}

- (void)openDB:(NSString *)DBName{
    NSString *path = DBName.wx_documentsDir;
    self.database = [FMDatabase databaseWithPath:path];
    if (![self.database open]) {
        return;
    }
}

- (void)closeDB
{
    [self.database close];
}

- (void)createTableDB:(NSArray *)sqls{
    NSString *sql = [sqls componentsJoinedByString:@""];
    [self.database executeStatements:sql];
}


- (void)queryTableDB:(NSString *)sql{
    FMResultSet *s = [self.database executeQuery:sql];
    while ([s next]) {
        //retrieve values for each record
        
        NSLog(@"s = %@",s);
    }
}



@end
