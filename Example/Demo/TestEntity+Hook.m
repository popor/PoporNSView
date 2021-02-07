//
//  TestEntity+Hook.m
//  Demo
//
//  Created by popor on 2021/2/7.
//  Copyright © 2021 popor. All rights reserved.
//

#import "TestEntity+Hook.h"

#import "PoporNSView.h"
#import <PoporFoundation/NSObject+pSwizzling.h>

@implementation TestEntity (Hook)

+ (void)load {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        
        [NSObject SwizzleClass:[TestEntity class] classMethod:@selector(funA) withMethod:@selector(funA_1)];
    });
}

+ (void)funA_1 {
    NSLog(@"A_1111");
}

@end
