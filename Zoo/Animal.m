//
//  Animal.m
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "Animal.h"

@implementation Animal
-(id)init:(NSString *)name
{
if(self=[super init])
{
    _name=name;
}
    return self;
}
-(NSString*)getName
{
    return _name;
}

-(void) setStrongLv:(int)strongLv
{
    _strongLv = strongLv;
}

-(int) getStrongLv
{
    return _strongLv;
}

-(NSArray*)reproduce
{
    return nil;
}
-(void)die
{

}
-(void)eat:(Food*)food
{

}
-(void)run
{

}
-(void)sound
{

}
-(void)sleep
{

}

@end
