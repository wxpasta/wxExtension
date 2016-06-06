#import <Foundation/Foundation.h>

@interface NSString (Util)

@property(nonatomic,readonly) BOOL isCaptcha;
@property(nonatomic,readonly) BOOL isNumber;
@property(nonatomic,readonly) BOOL isTelephone;






@property(nonatomic,readonly) NSString * trim;
@property(nonatomic,readonly) NSString * simpleTelephone;

@end
