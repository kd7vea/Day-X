//
//  EntryController.h
//  DayX
//
//  Created by Mac User on 9/24/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic, readonly) NSArray * entries;

+ (EntryController *)sharedInstance;
- (Entry *)createEntryWithTitle: (NSString *) title bodyText: (NSString *) bodyText;
-(void)removeEntry: (Entry *) entry;

@end
