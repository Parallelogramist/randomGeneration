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
    randNumLabel.text = [NSString stringWithFormat:@"Random # 1-10: %d", arc4random()%10+1];
}

- (IBAction)randomArrayElement:(id)sender {
    
    NSArray *elementArray = [NSArray arrayWithObjects:
                             @"One",
                             @"Two",
                             @"Three",
                             @"Four",
                             @"Five",
                             @"Six",
                             @"Seven",
                             @"Eight",
                             @"Nine",
                             @"Ten",
                             nil];
    
    randArrayElementLabel.text =  [NSString stringWithFormat:@"Random # One-Ten: %@",[elementArray objectAtIndex: arc4random()%[elementArray count]]];
}

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
                                        @"That wasn't supposed to happen...",
                                        @"SO RANDOM", nil] objectAtIndex:arc4random()%5]];
            break;
        default:
            [ self randomAction:self ];//in case something goes wrong
            break;
    }
}
@end
