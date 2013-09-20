//
//  MaketoFly.h
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    luon,
    lui,
    thangdung
} Flystyle;
@protocol MaketoFly <NSObject>
-(void)fly;
@optional
-(void)flytype:(id)object;
@end
