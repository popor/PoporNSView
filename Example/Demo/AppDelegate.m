//
//  AppDelegate.m
//  Demo
//
//  Created by popor on 2021/2/7.
//  Copyright © 2021 popor. All rights reserved.
//

#import "AppDelegate.h"
#import "PoporNSView.h"

#import "TestEntity+Hook.h"

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [[AppKeepFront share] showTitleBarFrontBT];
    
    [TestEntity funA];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
