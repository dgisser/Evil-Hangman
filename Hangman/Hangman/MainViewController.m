//
//  MainViewController.m
//  Hangman
//
//  Created by David Gisser on 7/17/13.
//  Copyright (c) 2013 David Gisser. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"words" ofType:@"plist"];
    NSArray *words = [[NSArray alloc] initWithContentsOfFile:path];
    self.words = words;
    self.guessesLeft = 13;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

- (IBAction)letterPressed:(UIButton *)sender {
    NSString *letter = [sender titleForState:UIControlStateNormal];
    sender.hidden=TRUE;
    self.guessesLeft--;
    self.guessLabel.text = [NSString stringWithFormat:@"%ul", self.guessesLeft];
}
- (void)setGuesses:(NSInteger*)guesses
{
    NSLog(@"%d",*(guesses));
    self.guessesLeft = *(guesses);
    self.guessLabel.text = [NSString stringWithFormat:@"%d", *(guesses)];
}
@end
