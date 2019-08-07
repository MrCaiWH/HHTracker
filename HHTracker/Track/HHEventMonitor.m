//
//  HHEventMonitor.m
//  HHTracker
//
//  Created by wanhong cai on 2019/8/7.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "HHEventMonitor.h"
#import "HHTrackConstant.h"
#import <Aspects/Aspects.h>

@implementation HHEventMonitor

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"

+ (void)aop_hookClazz:(Class<HHEventProtocol>)clazz {
    
    if (!clazz) return;
    if (![clazz respondsToSelector:@selector(loadEventConfig)]) {
        [NSException raise:NSStringFromClass(clazz) format:@"must impementation method %@",NSStringFromSelector(@selector(loadEventConfig))];
    }
    
    NSArray<NSDictionary *> *eventDict = [clazz loadEventConfig];
    
    [eventDict enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *clazz = [obj objectForKey:kClass];
        NSString *selector = [obj objectForKey:kSelector];
        NSString *event = [obj objectForKey:kEvent];
        __block NSDictionary *properties = [obj objectForKey:kProperties];
        
        Class class = NSClassFromString(clazz);
        SEL sel = NSSelectorFromString(selector);
        [class aspect_hookSelector:sel withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
            
            if ([properties isKindOfClass:[NSDictionary class]]) {
                [self customEventTrack:event properties:properties];
            }
            else {
                NSArray *arguments = [aspectInfo arguments];
                id firstArgument = [arguments firstObject];
                if ([firstArgument isKindOfClass:NSDictionary.class]) {
                    properties = firstArgument;
                }
                [self customEventTrack:event properties:properties];
            }
            
        } error:NULL];
    }];
}

+ (void)customEventTrack:(NSString *)event  properties:(NSDictionary *)properties {
    //第三方统计接口
}

#pragma clang diagnostic pop

@end
