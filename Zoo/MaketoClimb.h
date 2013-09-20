//
//  MaketoClimb.h
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MaketoClimb <NSObject>
-(void)climb:(id)object;
@optional
-(void)crawl;
-(void)crouch;
@end
