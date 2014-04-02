//
//  Slideshow.m
//  Lemon Grass
//
//  Created by Chris Carter on 3/23/14.
//  Copyright (c) 2014 CCarterOnline. All rights reserved.
//

#import "Slideshow.h"

@implementation Slideshow

- (void)awakeFromNib
{
    // Initialization code
    _timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(updatePhoto) userInfo:nil repeats:YES];
    _count = 0;
}

-(void)updatePhoto{
    _count = _count + 1;
    [self updateImage];
}


-(void)updateImage{
    if(_count == 1){
        
    }
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
