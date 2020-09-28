//
//  NSString+VMPAdditions.m
//  vmp
//
//  Created by magic-devel on 2020/9/16.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "NSString+VMPAdditions.h"

@implementation NSString (VMPAdditions)

-(BOOL)isNewerVersionThan:(NSString*)otherVersion {
    return ([self compare:otherVersion options:NSNumericSearch] == NSOrderedDescending);
}

@end
