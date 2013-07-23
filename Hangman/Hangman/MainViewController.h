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
@property (strong, nonatomic) IBOutlet UILabel *guessLabel;
@property (assign, nonatomic) int guessesLeft;
@property (nonatomic, readwrite, strong) NSArray *words;



@end
