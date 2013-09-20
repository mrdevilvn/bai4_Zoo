//
//  Fish.m
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "Fish.h"

@implementation Fish

-(void)sound
{
    NSLog(@"%@ sound Phi...Phi...",self);
}

-(void)swim:(id)object
{
    NSLog(@"Fish: %@ swim %@",self,object);
}

-(void)dive
{
    NSLog(@"Chua nghi ra");
}

@end
