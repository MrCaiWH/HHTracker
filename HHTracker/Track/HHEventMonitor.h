//
//  HHEventMonitor.h
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HHEventProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HHEventMonitor : NSObject
+ (void)aop_hookClazz:(Class<HHEventProtocol>)clazz;
@end

NS_ASSUME_NONNULL_END
