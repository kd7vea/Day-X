//
//  Entry.h
//  DayX
//
//  Created by Mac User on 9/24/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (strong, nonatomic) NSString * title;
@property (strong, nonatomic) NSString * bodyText;
@property (strong, nonatomic) NSDate * timeStamp;


@end
