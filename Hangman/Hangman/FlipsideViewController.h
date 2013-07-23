//
//  FlipsideViewController.h
//  Hangman
//
//  Created by David Gisser on 7/17/13.
//  Copyright (c) 2013 David Gisser. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
- (void)setGuesses:(NSInteger*)guesses;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *guessLabel;
@property (weak, nonatomic) IBOutlet UILabel *lengthLabel;

- (IBAction)done:(id)sender;
- (IBAction)guessSlider:(UISlider *)sender;
- (IBAction)lengthSlider:(UISlider *)sender;

@end
