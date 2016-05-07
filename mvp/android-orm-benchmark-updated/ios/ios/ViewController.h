//
//  ViewController.h
//  ios
//
//  Created by Kevin Galligan on 2/23/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "com/littleinc/orm_benchmark/BenchmarkPresenter.h"
#import "com/littleinc/orm_benchmark/memtest/SimpleTestPresenter.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, ComLittleincOrm_benchmarkBenchmarkPresenter_Host, MEMSimpleTestPresenter_Host>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, weak) IBOutlet UILabel *resultOutput;
@property (nonatomic, weak) IBOutlet UIButton *runBenchmark;
@property (nonatomic, strong) ComLittleincOrm_benchmarkBenchmarkPresenter *benchmarkPresenter;
@property (nonatomic, strong) MEMSimpleTestPresenter *simpleTestPresenter;

@end

