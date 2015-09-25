//
//  EntryController.m
//  DayX
//
//  Created by Mac User on 9/24/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@interface EntryController ()

@property (strong, nonatomic) NSArray * entries;

@end

@implementation EntryController


+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

- (Entry *)createEntryWithTitle: (NSString *) title bodyText: (NSString *) bodyText {
    Entry * entry = [Entry new];
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timeStamp = [NSDate date];
    [self addEntry:entry];
    return entry;
}

-(void)addEntry: (Entry *) entry {
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries addObject: entry];
    self.entries = mutableEntries;
}

-(void)removeEntry: (Entry *) entry {
    if (!entry) {
        return;
    }
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries removeObject: entry];
    self.entries = mutableEntries;
}







@end
