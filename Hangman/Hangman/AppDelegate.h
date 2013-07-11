//
//  AppDelegate.h
//  Hangman
//
//  Created by David Gisser on 7/10/13.
//  Copyright (c) 2013 David Gisser. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MainViewController *mainViewController;

@end
