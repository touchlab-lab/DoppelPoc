//
//  PlatformContext_iOS.m
//  ios
//
//  Created by Kevin Galligan on 3/10/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

#import "PlatformContext_iOS.h"

@implementation PlatformContext_iOS 

-(NSString *)storageDir
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [paths firstObject];
    
    // NSString *filePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory,@"notes"];
    
    return documentsDirectory;
    
}

- (void)loadCallbackWithSDACConferenceDayHolderArray:(IOSObjectArray *)conferenceDayHolders
{
    NSArray *asdf = (NSArray *)conferenceDayHolders;
    if([NSThread isMainThread])
    {
        NSLog(@"In main thread");
    }
    else{
                NSLog(@"Not main thread");
    }
}


@end
