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
#import "co/touchlab/simpledaggerapp/NoteStorage.h"
#import "co/touchlab/simpledaggerapp/conference/ConferenceDayHolder.h"
#import "co/touchlab/simpledaggerapp/conference/Block.h"
#import "PlatformContext_iOS.h"
#import "java/util/ArrayList.h"
#import "java/util/List.h"
#import "NoteTableViewCell.h"


@interface ViewController ()

@property (nonatomic, assign) long track;
@property (nonatomic, strong) NSMutableArray *notesArray;
@property (nonatomic, strong) NSMutableArray *imagesArray;
@property (nonatomic, strong) NSMutableArray *conferenceDays;
@property (nonatomic, strong) PlatformContext_iOS *platformContext;
@property (nonatomic, strong) CoTouchlabSimpledaggerappSimple *simple;
@property (nonatomic, strong) JavaUtilArrayList *notes;
@end

@implementation ViewController


- (void)createSDASimple
{
    self.platformContext = [PlatformContext_iOS new];
    self.platformContext.reloadDelegate = self;
    SDAPlatformSpecificModule *platformSpecificModule = [[SDAPlatformSpecificModule new] initWithSDAPlatformContext:self.platformContext];
    
    SDADaggerSimplePresenter *simplePresenter = [[[SDADaggerSimplePresenter builder]platformSpecificModuleWithSDAPlatformSpecificModule:platformSpecificModule] build];
    
    self.simple = [simplePresenter simple];
    

}

//- (void)loadNotes
//{
//    [self createSDASimple];
//    self.notes = (JavaUtilArrayList *)[self.simple->noteStorage_ allNotes];
//    
//    [self.notesArray removeAllObjects];
//    [self.imagesArray removeAllObjects];
//    [self.notesArray addObjectsFromArray:[self convertJavaUtilToArray:self.notes]];
//    NSLog(@"Notes Array ===> %@", self.notesArray);
//    
//    [self.tableView reloadData];
//}

- (void)loadConferenceSchedule
{
    [self createSDASimple];
    [self.simple->noteStorage_ callConferenceUpdate];
}

- (IBAction)updateTable:(id)sender
{
    NSLog(@"Updating Table");
    if ([self.dayChooser selectedSegmentIndex] == 0) {
        self.platformContext.isDayTwo = NO;
    } else {
        self.platformContext.isDayTwo = YES;
    }
    [self.platformContext updateTableData];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:(125/255.0) green:(216/255.0) blue:(20/255.0) alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes : @{NSForegroundColorAttributeName: [UIColor whiteColor]}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.tableView.bounds.size.width, 15.0f)];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
//    self.notesArray = [[NSMutableArray alloc] init];
//    self.imagesArray = [[NSMutableArray alloc] init];
//    [self loadNotes];

    [self loadConferenceSchedule];
    self.tableView.delegate = self.platformContext;
    self.tableView.dataSource = self.platformContext;
    
    [GIDSignIn sharedInstance].uiDelegate = self;

}

/*- (NSMutableArray *)convertJavaUtilToArray:(JavaUtilArrayList *)arrayList
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < arrayList.size; i++) {
        NSString *noteStr = [[arrayList getWithInt:i] getNote];
        [array addObject:noteStr];
        
        if ([[self.notes getWithInt:(jint)i] getImagePath].length > 0) {
            [self loadImageWithPath:[[self.notes getWithInt:(jint)i] getImagePath]];
        }
    }
    
    NSLog(@"IMAGES === %@", self.imagesArray);
    return array;
}*/

- (void)loadImageWithPath:(NSString *)imagePath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:imagePath];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
    [self.imagesArray addObject:imgView];
}
/*
#pragma TableView - DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.notesArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NoteTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"noteCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"NoteTableViewCell" bundle:nil] forCellReuseIdentifier:@"noteCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"noteCell"];
    }
    
    cell.imageView.image = nil;
    
    [cell.noteTitleLabel setText:[[self.notes getWithInt:(jint)indexPath.section] getTitle]];
    [cell.noteLabel setText:[self.notesArray objectAtIndex:[indexPath section]]];
    
    UIImageView *imgView;
    if (self.imagesArray.count > [indexPath section]) {
        imgView = [self.imagesArray objectAtIndex:[indexPath section]];
        
        UIImage *image = imgView.image;
        if (image) {
            [cell.noteImageView setImage:image];
        }
    }
    
    cell.layer.opaque = YES;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    [self performSegueWithIdentifier:@"EditNote" sender:indexPath];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 445.0;
}
*/

//#pragma AddNoteViewController - Delegate
//- (void)didEditNotes
//{
//    [self loadNotes];
//}
#pragma PlatformContext_iOS - Delegate
- (void)reloadTableView
{
    [self.tableView reloadData];
}

- (void)showEventDetailViewWithEvent:(SDACEvent *)event andIndex:(long)index
{
    self.track = index;
    [self performSegueWithIdentifier:@"ShowEventDetail" sender:event];
}

- (void)showBlockDetailViewWithBlock:(SDACBlock *)block
{
    [self performSegueWithIdentifier:@"ShowBlockDetail" sender:block];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"ShowAddNote"]) {
//        AddNoteViewController *addNoteVC = (AddNoteViewController *)segue.destinationViewController;
//        addNoteVC.delegate = self;
//    } else if ([[segue identifier] isEqualToString:@"EditNote"]) {
//        AddNoteViewController *addNoteVC = (AddNoteViewController *)segue.destinationViewController;
//        addNoteVC.delegate = self;
//        
//        NSIndexPath *indexPath = (NSIndexPath *)sender;
//        addNoteVC.noteString = [self.notesArray objectAtIndex:indexPath.section];
//        UIImageView *imgView = [self.imagesArray objectAtIndex:indexPath.section];
//        addNoteVC.noteImage = imgView.image;
//        addNoteVC.noteTitle = [[self.notes getWithInt:(jint)indexPath.section] getTitle];
//        NSLog(@"NOTE TITLE >> %@", [[self.notes getWithInt:(jint)indexPath.section] getTitle]);
//        addNoteVC.noteId = (jint)indexPath.section;
//    }
    
    if ([[segue identifier] isEqualToString:@"ShowEventDetail"]) {
        ShowEventDetailViewController *detailVC = segue.destinationViewController;
        SDACEvent *event = (SDACEvent *)sender;
        NSArray *speakers = [self.platformContext getSpeakersArrayFromEvent:event];
        detailVC.titleString = event->name_;
        detailVC.descriptionString = event->description__;
        detailVC.speakers = speakers;
        detailVC.trackNumString = [NSString stringWithFormat:@"%ld", (self.track+1)];
        detailVC.dateTime = [self.platformContext getEventTimeFromStart:event->startDate_ andEnd:event->endDate_];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end