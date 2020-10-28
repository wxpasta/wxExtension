//
//  VMPDownloadManager.m
//  vmp
//
//  Created by magic-devel on 2020/9/22.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "VMPDownloadManager.h"
#import <AFNetworking/AFNetworking.h>


@implementation VMPDownloadManager


static VMPDownloadManager *downloadManager = nil;

+ (instancetype)sharedDownloadManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        downloadManager =  [[self alloc] init];
    });
    return downloadManager;
}

- (void)downloadURL:(NSString *)urlString downloadCompletion:(VMPCompletion)completion {
    if (urlString.length == 0) {
        return;
    }
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    manager.securityPolicy.allowInvalidCertificates = YES;
    manager.securityPolicy.validatesDomainName = NO;
    NSURL *URL = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request
                                                                     progress:nil
                                                                  destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        DDLogInfo(@"File downloaded to: %@ error %@", filePath, error.localizedDescription);
        if (error == nil) {
            completion(YES, error.localizedDescription, [filePath path]);
        }else{
            completion(NO, nil, error.localizedDescription);
        }
    }];
    [downloadTask resume];
}

@end
