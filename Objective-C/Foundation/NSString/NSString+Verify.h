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

- (BOOL)isNumber;

- (BOOL)isIPAddress;

- (BOOL)isDomainName;

- (BOOL)isValidPortNumber;

@end