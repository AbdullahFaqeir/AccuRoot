/**
 * AccuRoot
 *
 * Created by Abdullah Al-Faqeir
 * Copyright (c) 2024 Your Company. All rights reserved.
 */

#import "ComAccusolutionsRootModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "DTTJailbreakDetection.h"

@implementation ComAccusolutionsRootModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
    return @"2ab27e2c-01a8-4d50-a2e5-96b74c59502d";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
    return @"com.accusolutions.root";
}

#pragma mark Lifecycle

- (void)startup
{
    // This method is called when the module is first loaded
    // You *must* call the superclass
    [super startup];
    self.shouldCrash = false;
}

#pragma Public APIs

- (BOOL)isTamperedWith
{
    bool isTamperedWith = [DTTJailbreakDetection isJailbroken];
    if(self.shouldCrash && isTamperedWith) {
        exit(0);
    }
    return isTamperedWith;
}

- (NSString *)getShouldCrash
{
    // Example property getter.
    // Call with "MyModule.exampleProp" or "MyModule.getExampleProp()"
    return @"Titanium rocks!";
}


- (void)setShouldCrash:(BOOL)shouldCrash
{
    self.shouldCrash = shouldCrash;
}

@end
