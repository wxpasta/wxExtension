//
//  NSBundle+MyBundle.m
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/4/8.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSBundle+MyBundle.h"

@implementation NSBundle (MyBundle)

+ (NSBundle *) myResourcesBundle
{
    static dispatch_once_t onceToken;
    static NSBundle *myLibraryResourcesBundle = nil;
    
    dispatch_once(&onceToken, ^
                  {
                      NSURL *url = [[NSBundle mainBundle] URLForResource:@"MyResources" withExtension:@"bundle"];
                      if (url) {
                          myLibraryResourcesBundle = [NSBundle bundleWithURL:url];
                      }
                  });
    
    return myLibraryResourcesBundle;
}

+ (NSBundle *) myPreferredLanguageResourcesBundle
{
    static dispatch_once_t onceToken;
    static NSBundle *myLanguageResourcesBundle = nil;
    
    dispatch_once(&onceToken, ^
                  {
                      NSString *language = [[[NSBundle myResourcesBundle] preferredLocalizations] firstObject];
                      NSString *path = [[NSBundle myResourcesBundle] pathForResource:language ofType:@"lproj"];
                      if (path) {
                          myLanguageResourcesBundle = [NSBundle bundleWithPath:path];
                      }
                      if( myLanguageResourcesBundle == nil )
                      {
                          myLanguageResourcesBundle = [NSBundle myResourcesBundle];
                      }
                  });
    return myLanguageResourcesBundle;
}

@end
