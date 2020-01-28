//
//  DMNEntry.m
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import "DMNEntry.h"

@implementation DMNEntry

- (instancetype) initWith:(NSString *)title
                     body:(NSString *)body
                timestamp:(NSString *)timestamp;
//timestamp:(nonnull NSString *)timestamp -> what is nonnull referring to;

{
    self = [super init];
    
    if (self) {
        _title = title;
        _body = body;
        _timestamp = timestamp;
        
    }
    
    return self;
}

@end
