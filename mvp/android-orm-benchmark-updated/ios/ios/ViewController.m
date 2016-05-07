//
//  ViewController.m
//  ios
//
//  Created by Kevin Galligan on 2/23/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

#import "ViewController.h"
#import "android/content/IOSContext.h"
#import "android/os/Looper.h"
#import "java/util/ArrayList.h"
#import "java/util/LinkedList.h"
#import "java/util/List.h"
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *notesArray;
@end

@implementation ViewController
-(void)viewDidLoad {
    [super viewDidLoad];
    
    [AndroidOsLooper prepareMainLooper];
    _benchmarkPresenter = [[ComLittleincOrm_benchmarkBenchmarkPresenter alloc] initWithComLittleincOrm_benchmarkBenchmarkPresenter_Host:self withBoolean:true];
    _simpleTestPresenter = [[MEMSimpleTestPresenter alloc] initWithMEMSimpleTestPresenter_Host:self];
}

- (IBAction)runClicked:(id)sender {
    [_benchmarkPresenter startBenchmark];
//    [_simpleTestPresenter runDbTest];
}

- (void)showTextWithNSString:(NSString *)results{
    _resultOutput.text = results;
}

-(void)buttonEnabledWithBoolean:(jboolean)enabled{
    _runBenchmark.enabled = enabled;
}
                                                              
- (AndroidContentContext *)getContext{
    return [AndroidContentIOSContext new];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [_benchmarkPresenter unregister];
}

#pragma TableView ­ DataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.notesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell;
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    
    [cell.textLabel setText:[self.notesArray objectAtIndex:[indexPath row]]];
    
    return cell;
}

-(void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}

@end
