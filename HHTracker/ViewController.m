//
//  ViewController.m
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "ViewController.h"
#import "HHDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"首页";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    HHDetailViewController *vc = [[HHDetailViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
