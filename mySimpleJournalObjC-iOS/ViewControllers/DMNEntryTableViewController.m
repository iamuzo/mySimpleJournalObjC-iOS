//
//  DMNEntryTableViewController.m
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import "DMNEntryTableViewController.h"
#import "DMNEntryController.h"
#import "DMNEntryDetailViewController.h"

@interface DMNEntryTableViewController ()

@end

@implementation DMNEntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

//Actions


//Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return DMNEntryController.sharedInstance.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    DMNEntry *entry = DMNEntryController.sharedInstance.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = entry.timestamp;
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        DMNEntry *entryToDelete = DMNEntryController.sharedInstance.entries[indexPath.row];
        [[DMNEntryController sharedInstance] removeEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showEntryDetail"]) {
        DMNEntryDetailViewController *destionationVC = [segue destinationViewController];
        
        NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
        DMNEntry *entry = DMNEntryController.sharedInstance.entries[indexpath.row];
        destionationVC.entry = entry;
    }
}

@end
