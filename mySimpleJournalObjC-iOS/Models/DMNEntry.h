//
//  DMNEntry.h
//  mySimpleJournalObjC-iOS
//
//  Created by Uzo on 1/27/20.
//  Copyright © 2020 Uzo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DMNEntry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSString *timestamp;

///create an initializer
- (instancetype) initWith:(NSString *)title
                     body:(NSString *)body
            timestamp:(NSString *)timestamp;


@end

NS_ASSUME_NONNULL_END
