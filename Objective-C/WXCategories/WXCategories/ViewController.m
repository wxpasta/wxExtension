//
//  ViewController.m
//  WXCategories
//
//  Created by 巴糖 on 2019/6/17.
//  Copyright © 2019 巴糖. All rights reserved.
//


#import "ViewController.h"
#import "NSString+DeviceHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@",[NSString getBatteryMoniter]);
}


@end
