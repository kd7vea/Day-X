//
//  LIstTableViewDataSource.m
//  DayX
//
//  Created by Jake Estepp on 9/23/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "LIstTableViewDataSource.h"



@implementation LIstTableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell"];
    cell.textLabel.text =[NSString stringWithFormat:@"Entry %ld",  (long)indexPath.row];
    
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

@end
