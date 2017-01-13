//
//  FMDatabaseManager.h
//  X8.2O
//
//  Created by 巴糖 on 2016/12/20.
//  Copyright © 2016年 巴糖. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMDatabaseManager : NSObject

+ (instancetype)shareManager;

- (void)openDB:(NSString *)DBName;
- (void)closeDB;
- (void)createTableDB:(NSArray *)sqls;

@end
