//
//  TimersViewController.h
//  Timers
//
//  Created by Jonathan Hernandez on 11-05-09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimersViewController : UIViewController {
    
    int counterA;
    bool startA;
    IBOutlet UILabel *secondsA;
    NSTimer *timerA;
    
}

- (IBAction)start:(id)sender;
- (void) updateTimer;

@end
