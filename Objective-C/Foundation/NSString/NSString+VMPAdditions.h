//
//  NSString+VMPAdditions.h
//  vmp
//
//  Created by magic-devel on 2020/9/16.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (VMPAdditions)

-(BOOL)isNewerVersionThan:(NSString*)otherVersion;

@end

NS_ASSUME_NONNULL_END
