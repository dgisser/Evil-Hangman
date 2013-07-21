//
//  MainViewController.h
//  Hangman
//
//  Created by David Gisser on 7/17/13.
//  Copyright (c) 2013 David Gisser. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
- (IBAction)letterPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *number;
@property (assign, nonatomic) unsigned long guessesLeft;

@end
