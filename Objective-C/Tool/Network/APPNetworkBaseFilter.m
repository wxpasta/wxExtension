//
//  APPNetworkBaseFilter.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/25.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "APPNetworkBaseFilter.h"

@implementation APPNetworkBaseFilter

- (BOOL)validResponseObject:(id)responseObject
{
    //TODO: 检查是否返回了数据且数据是否正确
    if (!responseObject &&
        ![responseObject isKindOfClass:[NSDictionary class]] &&
        ![responseObject[@"success"] boolValue]) {
        return NO;
    }
    else
        return YES;
}

@end
