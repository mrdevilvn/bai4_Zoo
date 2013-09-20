//
//  Animal.h
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
vegetal=0,
    meat
}Food;
typedef enum
{
    female=0,
    male,
    undefined
} SexEnum;
@interface Animal : NSObject
{
    SexEnum _sex;
    NSString *_name;
    int _strongLv;
}
-(id)init:(NSString*)name;
-(NSString*)getName;
-(void) setStrongLv : (int)strongLv;
-(int) getStrongLv;
-(NSArray*)reproduce;
-(void)die;
-(void)eat:(Food*)food;
-(void)run;
-(void)sound;
-(void)sleep;
@end
