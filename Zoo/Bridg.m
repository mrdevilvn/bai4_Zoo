//
//  Bridg.m
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "Bridg.h"

@implementation Bridg

-(void)sound
{
    NSLog(@"%@ sound Ec...EC...",self);
}

-(void)fly
{
    NSLog(@"Bird: %@ fly",self);
}

-(void)flytype:(id)object
{
    NSLog(@"Fly style of Bird: %@ is %@",self,object);
}

@end
