//
//  HHDetailTrack.m
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "HHDetailTrack.h"
#import "HHTrackConstant.h"

@implementation HHDetailTrack

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"

+ (NSArray<NSDictionary *> *)loadEventConfig {
    return @[@{kClass:@"HHDetailViewController",
               kSelector:NSStringFromSelector(@selector(showAlert)),
               kEvent:@"HH_SHOWALERT_CLICK",
               }];
}

#pragma clang diagnostic pop

@end
