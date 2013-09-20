//
//  HomeWorkViewController.h
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tree.h"
#import "Cat.h"
#import "Animal.h"
#import "Dog.h"
#import "Tiger.h"
#import "Fish.h"
#import "Bridg.h"
#import "Place.h"

@interface HomeWorkViewController : UIViewController
{
    bool bCreateZoo;
    int animalCounter;
    Cat *cat;
    Tiger *tiger;
    Cat *lion;
    Fish *fish;
    Bridg *bird;
    Dog *dog;
    NSArray *animals;
}

@end
