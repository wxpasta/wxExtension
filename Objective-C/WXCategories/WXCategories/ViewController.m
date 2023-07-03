//
//  ViewController.m
//  WXCategories
//
//  Created by 巴糖 on 2019/6/17.
//  Copyright © 2019 巴糖. All rights reserved.
//


#import "ViewController.h"
#import "UISearchBar+CteateUI.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISearchBar *searchBar = [UISearchBar searchBarWithBackgroundColor:[UIColor yellowColor]
                                                                 frame:CGRectMake(40, 100, 200, 40) radius:10];
    [self.view addSubview:searchBar];

}


@end
