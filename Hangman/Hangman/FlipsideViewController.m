//
//  FlipsideViewController.m
//  Hangman
//
//  Created by David Gisser on 7/17/13.
//  Copyright (c) 2013 David Gisser. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.guessLabel.text = @"13";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (IBAction)guessSlider:(UISlider *)sender {
    int guesses = lroundf(sender.value);
    self.guessLabel.text = [NSString stringWithFormat:@"%d", guesses];
}

- (IBAction)lengthSlider:(UISlider *)sender {
    int lengthChosen = lroundf(sender.value);
    self.lengthLabel.text = [NSString stringWithFormat:@"%d", lengthChosen];
}

@end
