//
//  DMNEntryController.h
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMNEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMNEntryController : NSObject

//property entries of type NSArray declared on DMNEntryController
@property (nonatomic, strong) NSMutableArray *entries;

//Shared Global Singleton
+ (DMNEntryController *)sharedInstance;

//CRUD
- (void)addEntry:(DMNEntry *)entry;

- (void)removeEntry:(DMNEntry *)entry;

@end

NS_ASSUME_NONNULL_END
