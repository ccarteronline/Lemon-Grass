//
//  ccarter_myTableView.h
//  Lemon Grass
//
//  Created by Chris Carter on 3/23/14.
//  Copyright (c) 2014 CCarterOnline. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ccarter_AboutUs.h"
#import "ccarter_Services.h"
#import "ccarter_Staff.h"
#import "ccarter_News.h"

@interface ccarter_myTableView : UITableViewController
@property(nonatomic, retain)NSArray *myListedThings;
@property(nonatomic, retain)ccarter_AboutUs *aboutUs;
@property(nonatomic, retain)ccarter_Services *services;
@property(nonatomic, retain)ccarter_Staff *staff;
@property(nonatomic, retain)ccarter_News *news;
@end
