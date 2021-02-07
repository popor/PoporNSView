//
//  NSView+pResponse.m
//  PoporNSView
//
//  Created by popor on 2021/2/6.
//  Copyright © 2021 apple. All rights reserved.
//

#import "NSView+pResponse.h"

#import <PoporFoundation/NSObject+pSwizzling.h>

@implementation NSView (pResponse)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        [objc_getClass("NSView") methodSwizzlingWithOriginalSelector:@selector(resignFirstResponder) bySwizzledSelector:@selector(pResignFirstResponder)];
        [objc_getClass("NSView") methodSwizzlingWithOriginalSelector:@selector(becomeFirstResponder) bySwizzledSelector:@selector(pBecomeFirstResponder)];
    });
}


- (BOOL)pResignFirstResponder {
    self.firstResponse = NO;
    return [self pResignFirstResponder];
}

- (BOOL)pBecomeFirstResponder {
    self.firstResponse = YES;
    return [self pBecomeFirstResponder];
}

#pragma mark - set get
- (void)setFirstResponse:(BOOL)firstResponse {
    objc_setAssociatedObject(self, @"firstResponse", [NSString stringWithFormat:@"%i", firstResponse], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL)firstResponse {
    NSString * str = objc_getAssociatedObject(self, @"firstResponse");
    if (str) {
        return str.boolValue;
    } else {
        return NO;
    }
}

@end
