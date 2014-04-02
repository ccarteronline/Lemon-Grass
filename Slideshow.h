//
//  Slideshow.h
//  Lemon Grass
//
//  Created by Chris Carter on 3/23/14.
//  Copyright (c) 2014 CCarterOnline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Slideshow : UITableViewCell
@property(nonatomic,retain)NSTimer *timer;
@property(nonatomic, assign)int count;

@end
