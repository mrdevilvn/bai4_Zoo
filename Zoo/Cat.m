//
//  Cat.m
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "Cat.h"

@implementation Cat

-(void)snapAtFrequency:(float)frequency andDuration:(float)duration
{
    _frequency=frequency;
    _duration=duration;
    if (!_timer) {
        _timer=[NSTimer scheduledTimerWithTimeInterval:1/_frequency target:self selector:@selector(soundGruGru) userInfo:nil repeats:YES];
    }
    [_timer invalidate];
    _timer=nil;
}

-(void)soundGruGru
{
    NSLog(@"Gru...Gru...");
}

-(void)sound
{
    NSLog(@"%@ sound Meo...Meo...",self);
}

-(void)climb:(id)object
{
    NSLog(@"cat: %@ climb %@",self,object);
}

@end
