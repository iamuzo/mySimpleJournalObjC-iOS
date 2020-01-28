//
//  DMNEntryDetailViewController.m
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import "DMNEntryDetailViewController.h"
#import "DMNEntryController.h"
#import "DMNEntry.h"

@interface DMNEntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;

@end

@implementation DMNEntryDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) setEntry:(DMNEntry *)entry
{
    _entry = entry;
    [self updateViewsWith:entry];
}

- (void) updateViewsWith:(DMNEntry *)entry
{
    [self loadViewIfNeeded];
    
    if (self.entry) {
        self.entryTitleTextField.text = entry.title;
        self.entryBodyTextView.text = entry.body;
    }
}


//Actions
- (IBAction)saveEntryBottonTapped:(UIBarButtonItem *)sender {
    
    {   NSString *title = _entryTitleTextField.text;
        NSString *body = _entryBodyTextView.text;
        
        if (![title  isEqual: @""] && ![body  isEqual: @""]) {
            NSDate *currentDate = [NSDate date];
            NSDateFormatter *dateOutputFormatter = [[NSDateFormatter alloc] init];
            [dateOutputFormatter setDateFormat:@"yyyy-MM-dd"];
            NSString *dateAsString = [dateOutputFormatter stringFromDate:currentDate];
            
            NSString *myRetainedNSString = [[NSString alloc] initWithFormat:@" %@", dateAsString];
            
            // create Entry
            DMNEntry *newEntry = [[DMNEntry alloc] initWith:title body:body timestamp:myRetainedNSString];
            
            
            [[DMNEntryController sharedInstance]addEntry:newEntry];

            [self.navigationController popViewControllerAnimated:true];
        }
    }
}

- (IBAction)clearDefaultBodyTextButtonTapped:(UIButton *)sender {
    _entryBodyTextView.text = @"";
}


@end
