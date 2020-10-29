//
//  NSString+Verify.h
//  NemoOfficeClient
//
//  Created by 杨旭东 on 21/04/2017.
//  Copyright © 2017 ainemo. All rights reserved.
//

@import Foundation;

@interface NSString (Verify)

- (BOOL)isPhoneNumber;

- (BOOL)isMail;

- (BOOL)valid;



- (BOOL)pureNumber;

- (BOOL)isIPAddress;

- (BOOL)isDomainName;

- (BOOL)isValidPortNumber;

// 是否1开头，11位手机号
- (BOOL)isSimplePhone;

//判断是否为整形：
- (BOOL)isPureInt;

//判断是否为浮点形
- (BOOL)isPureFloat;

@end
