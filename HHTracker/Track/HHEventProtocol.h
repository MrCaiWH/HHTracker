//
//  HHEventProtocol.h
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol HHEventProtocol <NSObject>
@required;
+ (NSArray<NSDictionary *> *)loadEventConfig;
@end

NS_ASSUME_NONNULL_END
