//
//  ViewController.m
//  randomGeneration
//
//  Created by Parallelogramist on 6/21/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)randomNumber:(id)sender {
    randNumLabel.text = [NSString stringWithFormat:@"Random # 1-99: %d", arc4random()%99+1];
}

- (IBAction)randomArrayElement:(id)sender {
    
    NSArray *elementArray = [NSArray arrayWithObjects:
                             @"Un",
                             @"Do",
                             @"Tre",
                             @"Quatro",
                             @"Cinco de Mayo",
                             @"Seis",
                             @"Siete",
                             @"Ocho",
                             @"Nueve",
                             @"Cien!!!",
                             nil];
    
    randArrayElementLabel.text =  [NSString stringWithFormat:@"Números Aleatorios: %@",[elementArray objectAtIndex: arc4random()%[elementArray count]]];
}
//method uses a switch statement and arc4rand to call a random function
- (IBAction)randomAction:(id)sender {
    
    switch (arc4random()%3+1) {
        case 1:
            [ self randomNumber:self ];
            break;
        case 2:
            [ self randomArrayElement:self ];
            break;
        case 3:
            randomActionLabel.text = [NSString stringWithFormat:@"Oops...\n%@",
                                      [[NSArray arrayWithObjects:@"I did it again",
                                        @"I dropped the marbles",
                                        @"I ate it all",
                                        @"OH NO, you did N't! snap! snap! snap!",
                                        @"That wasn't supposed to happen...",
                                        @"SO RANDOM", nil] objectAtIndex:arc4random()%5]];
            break;
        default:
            [ self randomAction:self ];//in case something goes wrong
            break;
    }
}
@end
