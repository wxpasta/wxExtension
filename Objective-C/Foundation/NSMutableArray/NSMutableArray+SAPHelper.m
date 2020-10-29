//
//  NSMutableArray+SAPHelper.m
//  SapWrappingDylib
//
//  Created by magic-devel on 2020/10/19.
//  Copyright © 2020 SAP. All rights reserved.
//

#import "NSMutableArray+SAPHelper.h"

@implementation NSMutableArray (SAPHelper)

+ (NSMutableDictionary *)sapDataAnalysisWithURL:(NSURL *)url {
    NSString *strUrl = url.absoluteString;
    NSArray *arrTemp = [strUrl componentsSeparatedByString:@"://"];
    
    NSString *first = nil;
    NSString *second = nil;
    
    if (arrTemp.count == 2) {
        first = [arrTemp objectAtIndex:0];
        second = [arrTemp objectAtIndex:1];
    }
    
    NSMutableDictionary *dicParams = [NSMutableDictionary dictionary];
    
    if (first.length > 0 && second.length > 0) {
        NSString *paras = [second stringByRemovingPercentEncoding];
        NSArray *infos = [paras componentsSeparatedByString:@"&"];
        __block NSArray *temp = nil;
        [infos enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            temp = [obj componentsSeparatedByString:@"="];
            if (temp.count == 2) {
                [dicParams setValue:temp[1] forKey:temp[0]];
            }
        }];
    }
    return dicParams;
}

@end
