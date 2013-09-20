//
//  HomeWorkViewController.m
//  Zoo
//
//  Created by MrSharko on 9/6/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "HomeWorkViewController.h"
#include <stdlib.h>

@interface HomeWorkViewController ()

@end

@implementation HomeWorkViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    bCreateZoo = false;
    animalCounter = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)CreatZoo:(id)sender {
    
    if (bCreateZoo) {
        NSLog(@"The Zoo was created");
        return;
    }
    cat=[[Cat alloc]init:@"Tom"];
    [cat setStrongLv:1];
    tiger=[[Tiger alloc]init:@"White Tiger"];
    [tiger setStrongLv:3];
    lion=[[Cat alloc]init:@"Mountain Lion"];
    [lion setStrongLv:3];
    fish=[[Fish alloc]init:@"Crocodile"];
    [fish setStrongLv:3];
    bird=[[Bridg alloc]init:@"Eagle"];
    [bird setStrongLv:2];
    dog=[[Dog alloc]init:@"wolf"];
    [dog setStrongLv:2];
    animals=@[cat,tiger,lion,fish,bird,dog];
    bCreateZoo = true;
    animalCounter = 6;
    
    NSLog(@"Create a zoo successfully");
    
}

- (IBAction)AnimalSound:(id)sender {
    
    if (!bCreateZoo) {
        NSLog(@"No aminal in the zoo, please create a zoo");
        return;
    }
    
    for(Animal *animal in animals)
    {
        [animal sound];
    }
}

- (IBAction)AnimalMove:(id)sender {
    if (!bCreateZoo) {
        NSLog(@"No aminal in the zoo, please create a zoo");
        return;
    }
    
    for(Animal *animal in animals)
    {
        if([animal conformsToProtocol:NSProtocolFromString(@"MaketoClimb")]){
            id<MaketoClimb>moveAndClimbAnimal=(id<MaketoClimb>)animal;
            Tree *tree=[[Tree alloc]init:@"Banyan Tree"];
            [moveAndClimbAnimal climb:tree];
        }
        else if([animal conformsToProtocol:NSProtocolFromString(@"MaketoSwim")]){
            id<MaketoSwim>moveAndSwimAnimal=(id<MaketoSwim>)animal;
            Place *lake=[[Place alloc]init:@"Victoria"];
            [moveAndSwimAnimal swim:lake];
        }
        else if([animal conformsToProtocol:NSProtocolFromString(@"MaketoFly")]){
            id<MaketoFly>moveAndFlyAnimal=(id<MaketoFly>)animal;
            //Flystyle *stylef= loaf;
            [moveAndFlyAnimal flytype:@"loaf"];
        }
    }

}

- (IBAction)demoFighter:(id)sender {
    
    if (!bCreateZoo) {
        NSLog(@"No aminal in the zoo, please create a zoo");
        return;
    }

    int firstGladiator = rand() % 6;
    int secondGladiator = rand() % 6;
    if (firstGladiator == secondGladiator) {
        secondGladiator = rand() % 6;
    }
    
    NSLog(@"%@ vs %@", [animals[firstGladiator] getName], [animals[secondGladiator] getName]);
    
    if ([animals[firstGladiator] getStrongLv] > [animals[secondGladiator] getStrongLv]) {
        NSLog(@"%@ win", [animals[firstGladiator] getName]);
    }
    else if ([animals[firstGladiator] getStrongLv] < [animals[secondGladiator] getStrongLv]){
        NSLog(@"%@ win", [animals[secondGladiator] getName]);
    }
    else{
        NSLog(@"draw");
    }
}

@end
