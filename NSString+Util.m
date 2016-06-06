#import "NSString+Util.h"

@implementation NSString (Util)

-(BOOL)isTelephone
{
    NSString * reg = @"^1\\d{10}$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [regextest evaluateWithObject:self.simpleTelephone];
}

-(NSString*)simpleTelephone
{
    if([self hasPrefix:@"+86"])
        return [self substringFromIndex:3];
    if([self hasPrefix:@"86"])
        return [self substringFromIndex:2];
    return self;
}

-(BOOL)isNumber
{
    NSString * reg = @"^\\d+$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [regextest evaluateWithObject:self];
}

-(NSString*)trim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(BOOL)isCaptcha
{
    NSString * reg = @"\\d{6}$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [regextest evaluateWithObject:self.simpleTelephone];
}


@end
