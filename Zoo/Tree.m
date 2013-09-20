//
//  Tree.m
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "Tree.h"

@implementation Tree
-(id)init:(NSString *)name
{
    if(self=[super init])
    {
        _name=name;
    }
    return self;
}
-(NSString*)description
{
    return _name;
}
@end
