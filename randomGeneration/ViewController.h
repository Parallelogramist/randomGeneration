//
//  ViewController.h
//  randomGeneration
//
//  Created by Parallelogramist on 6/21/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *randNumLabel;
    IBOutlet UILabel *randArrayElementLabel;
    IBOutlet UILabel *randomActionLabel;
}
- (IBAction)randomNumber:(id)sender;
- (IBAction)randomArrayElement:(id)sender;
- (IBAction)randomAction:(id)sender;

@end
