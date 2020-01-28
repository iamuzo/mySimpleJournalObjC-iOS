//
//  DMNDateHelper.m
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import "DMNDateHelper.h"

@implementation DMNDateHelper

- (NSString *)GetCurrentTime
{
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *dateOutputFormatter = [[NSDateFormatter alloc] init];
    [dateOutputFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateAsString = [dateOutputFormatter stringFromDate:currentDate];
    
    NSString *myRetainedNSString = [[NSString alloc] initWithFormat:@" %@", dateAsString];
    
    return ((void)(@"dateAsString %@"), myRetainedNSString);
    
}

@end
