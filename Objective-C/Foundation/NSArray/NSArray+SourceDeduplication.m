//
//  NSArray+SourceDeduplication.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/7/1.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSArray+SourceDeduplication.h"

@implementation NSArray (SourceDeduplication)

- (NSArray *)duplicateRemovalWithArray:(NSArray *)oldArray{
    NSSet *set = [NSSet setWithArray:oldArray];
    NSArray *newArray = [set allObjects];
    return newArray;
}

@end
