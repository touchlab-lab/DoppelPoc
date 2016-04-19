//
//  PlatformContext_iOS.h
//  ios
//
//  Created by Sahil Ishar on 3/10/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "co/touchlab/simpledaggerapp/PlatformContext.h"
#import "co/touchlab/simpledaggerapp/conference/Event.h"
#import "co/touchlab/simpledaggerapp/conference/Block.h"
#import "android/content/IOSContext.h"

@protocol PlatformContext_iOSDelegate <NSObject>

- (void)reloadTableView;
- (void)showEventDetailViewWithEvent:(SDACEvent *)event andIndex:(long)index;
@end

@interface PlatformContext_iOS : NSObject <CoTouchlabSimpledaggerappPlatformContext, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <PlatformContext_iOSDelegate> reloadDelegate;

@property (nonatomic, assign) BOOL successfulRequest;
@property (nonatomic, assign) BOOL isDayTwo;
@property (nonatomic, strong) __block NSDateFormatter *dateFormatter;
@property (nonatomic, strong) __block NSDateFormatter *timeFormatter;
@property (nonatomic, strong) NSArray *conferenceDays;
@property (nonatomic, strong) NSMutableArray *hourBlocks;
@property (nonatomic, strong) AndroidContentIOSContext *iosContext;

- (void)updateTableData;
- (NSArray *)getSpeakersArrayFromEvent:(SDACEvent *)event;
- (NSString *)getEventTimeFromStart:(NSString *)startTime andEnd:(NSString *)endTime;
- (NSString *)getFullEventTime:(SDACEvent *)event;

@end
