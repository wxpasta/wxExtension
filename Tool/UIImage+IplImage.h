//
//  UIImage+IplImage.h
//  PicBooks
//
//  Created by mac on 9/21/16.
//  Copyright © 2016 AngieMita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/opencv.hpp>

@interface UIImage (IplImage)

- (IplImage *)convertToIplImage:(UIImage *)image;
- (UIImage *)convertToUIImage:(IplImage *)image;

@end
