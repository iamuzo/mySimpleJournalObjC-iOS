//
//  DMNEntryController.m
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import "DMNEntryController.h"
#import "DMNEntry.h"

@implementation DMNEntryController

+ (DMNEntryController *)sharedInstance {
    static DMNEntryController *sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[DMNEntryController alloc] init];
    });
    
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray array];
    }
    
    return self;
}

- (void)addEntry:(DMNEntry *)entry
{
    [_entries addObject:entry];
}


- (void)removeEntry:(DMNEntry *)entry
{
    [_entries removeObject:entry];
}

@end
