//
//  Cat.h
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "Animal.h"
#import "MaketoClimb.h"

@interface Cat : Animal<MaketoClimb>
{
    float _frequency;
    float _duration;
    NSTimer *_timer;
}
-(void) snapAtFrequency:(float)frequency andDuration:(float)duration;
@end
