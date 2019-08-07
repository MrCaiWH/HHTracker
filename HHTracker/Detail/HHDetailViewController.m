//
//  HHDetailViewController.m
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "HHDetailViewController.h"

@interface HHDetailViewController ()

@end

@implementation HHDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self showAlert];
}

- (void)showAlert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"hello" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *centain = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:centain];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
