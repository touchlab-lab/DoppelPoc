//
//  ViewController.m
//  ios
//
//  Created by Kevin Galligan on 2/23/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

#import "ViewController.h"
#import "com/littleinc/orm_benchmark/BenchmarkPresenter.h"
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
    
    
//    SDAPlatformSpecificModule *platformSpecificModule =
//    
//    [[SDAPlatformSpecificModule new]
//     
//     initWithSDAPlatformContext:[PlatformContext_iOS new]];
//    
//    SDADaggerSimplePresenter *simplePresenter =
//    
//    [[[SDADaggerSimplePresenter builder]platformSpecificModuleWithSDAPlatformSpecificModule:platformSpecificModule]
//     build];
//    
//    CoTouchlabSimpledaggerappSimple *simple = [simplePresenter simple];
//    
//    [simple->noteStorage_ init__];
    
//    JavaUtilArrayList *notes = [simple->noteStorage_ allNotes];
//    
//    NSLog(@"Note === %@", [[notes getWithInt:0] getNote]);
    
//    self.notesArray = [[NSMutableArray alloc] init];
//    
//    [self.notesArray addObjectsFromArray:[self convertJavaUtilToArray:notes]];
//    
//    [self.tableView reloadData];
    
//    [simple->noteStorage_ callConferenceUpdate];

//    id<JavaUtilList> heyo = new_JavaUtilLinkedList_init();
//    for (jint i = 0; i < 100000; i++) {
//        [heyo addWithId:JreStrcat("$I", @"asdf ", i)];
//    }
    
    [AndroidOsLooper prepareMainLooper];
    _benchmarkPresenter = [[ComLittleincOrm_benchmarkBenchmarkPresenter alloc] initWithComLittleincOrm_benchmarkBenchmarkPresenter_Host:self];
    
//    ComLittleincOrm_benchmarkBenchmarkPresenter *presenter = [[ComLittleincOrm_benchmarkBenchmarkPresenter alloc] initWithComLittleincOrm_benchmarkBenchmarkPresenter_Host:(id<ComLittleincOrm_benchmarkBenchmarkPresenter_Host>)
//    
//    CoTouchlabAndroidThreadingTasksTaskQueue *queue = [[CoTouchlabAndroidThreadingTasksTaskQueue loadQueueDefaultWithAndroidContentContext:[AndroidContentIOSContext alloc]] init];
//    [queue executeWithCoTouchlabAndroidThreadingTasksTask:[[ComLittleincOrm_benchmarkTasksOrmBenchmarksTask alloc] init]];
//    
//    
//    
//    [[[ComLittleincOrm_benchmarkTasksOrmBenchmarksTask alloc] init] runWithAndroidContentContext:[AndroidContentIOSContext alloc]];
}
- (IBAction)runClicked:(id)sender {
    [_benchmarkPresenter startBenchmark];
    _resultOutput.text = @"Running...";
    [self refreshUi];
}

-(void)refreshUi{
    _runBenchmark.enabled = ![_benchmarkPresenter benchmarkRunning];
}


- (void)benchmarkResultsWithNSString:(NSString *)results{
    
//    _resultOutput.text = results;
    
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[results dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    
    _resultOutput.attributedText = attrStr;
    
    [self refreshUi];
//    UILabel * myLabel = [[UILabel alloc] init];
//    myLabel.attributedText = attrStr;
//    NSLog(results);
}
                                                              
- (AndroidContentContext *)getContext{
    return [AndroidContentIOSContext new];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [_benchmarkPresenter unregister];
}

//-(NSMutableArray *)convertJavaUtilToArray:(JavaUtilArrayList *)arrayList
//
//{
//    
//    NSMutableArray *array = [[NSMutableArray alloc] init];
//    
//    for (int i = 0; i < arrayList.size; i++) {
//        
//        NSString *noteStr = [[arrayList getWithInt:i] getNote];
//        
//        [array addObject:noteStr];
//        
//    }
//    
//    return array;
//    
//}

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
