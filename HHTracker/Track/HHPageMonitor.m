//
//  HHPageMonitor.m
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "HHPageMonitor.h"
#import <Aspects/Aspects.h>

@implementation HHPageMonitor

+ (void)statistics {
    [UIViewController aspect_hookSelector:@selector(viewDidAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
     
        UIViewController *vc = [aspectInfo instance];
        NSString *vcName = NSStringFromClass([vc class]);
        
        if ([vcName isEqualToString:@"UITableViewController"] || [vcName isEqualToString:@"UINavigationController"]) {
            //过滤两个系统类
        }
        else {
            //统计代码
            NSLog(@"%@进入了，开始统计时长",vcName);
        }
        
    } error:NULL];
    
    [UIViewController aspect_hookSelector:@selector(viewDidDisappear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        
        UIViewController *vc = [aspectInfo instance];
        NSString *vcName = NSStringFromClass([vc class]);
        
        if ([vcName isEqualToString:@"UITableViewController"] || [vcName isEqualToString:@"UINavigationController"]) {
            
        }
        else {
            //统计代码
            NSLog(@"%@离开了，结束统计时长",vcName);
        }
        
    } error:NULL];
}

@end
