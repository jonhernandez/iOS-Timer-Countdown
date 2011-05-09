//
//  TimersAppDelegate.h
//  Timers
//
//  Created by Jonathan Hernandez on 11-05-09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimersViewController;

@interface TimersAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TimersViewController *viewController;

@end
