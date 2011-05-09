//
//  TimersViewController.h
//  Timers
//
//  Created by Jonathan Hernandez on 11-05-09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimersViewController : UIViewController {
    
    IBOutlet UILabel *secondsA;
    NSTimer *timerA;
    int counterA;
    BOOL startA;
    
}

-(IBAction)start:(id) sender;
-(void)updateTimer;

@end
