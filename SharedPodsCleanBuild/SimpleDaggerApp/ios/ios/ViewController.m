//
//  ViewController.m
//  ios
//
//  Created by Kevin Galligan on 2/23/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

#import "ViewController.h"
#import "co/touchlab/simpledaggerapp/DaggerSimplePresenter.h"
#import "co/touchlab/simpledaggerapp/PlatformSpecificModule.h"
#import "co/touchlab/simpledaggerapp/Simple.h"
#import "co/touchlab/simpledaggerapp/Note.h"
#import "co/touchlab/simpledaggerapp/NoteStorage.h"
#import "PlatformContext_iOS.h"
#import "java/util/ArrayList.h"
#import "java/util/List.h"
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *notesArray;
@end

@implementation ViewController
-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    SDAPlatformSpecificModule *platformSpecificModule =
    
    [[SDAPlatformSpecificModule new]
     
     initWithSDAPlatformContext:[PlatformContext_iOS new]];
    
    SDADaggerSimplePresenter *simplePresenter =
    
    [[[SDADaggerSimplePresenter builder]platformSpecificModuleWithSDAPlatformSpecificModule:platformSpecificModule]
     build];
    
    CoTouchlabSimpledaggerappSimple *simple = [simplePresenter simple];
    
    [simple->noteStorage_ init__];
    
//    JavaUtilArrayList *notes = [simple->noteStorage_ allNotes];
//    
//    NSLog(@"Note === %@", [[notes getWithInt:0] getNote]);
    
//    self.notesArray = [[NSMutableArray alloc] init];
//    
//    [self.notesArray addObjectsFromArray:[self convertJavaUtilToArray:notes]];
//    
//    [self.tableView reloadData];
    
    [simple->noteStorage_ callConferenceUpdate];
    
}

-(NSMutableArray *)convertJavaUtilToArray:(JavaUtilArrayList *)arrayList

{
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < arrayList.size; i++) {
        
        NSString *noteStr = [[arrayList getWithInt:i] getNote];
        
        [array addObject:noteStr];
        
    }
    
    return array;
    
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
