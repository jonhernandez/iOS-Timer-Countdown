//
//  TimersViewController.m
//  Timers
//
//  Created by Jonathan Hernandez on 11-05-09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TimersViewController.h"

@implementation TimersViewController

- (void)awakeFromNib{
    
    counterA = 10;
    startA = TRUE;
    
}

- (void)updateTimer{ //Happens every time updateTimer is called. Should occur every second.
    
    counterA -= 1;
    secondsA.text = [NSString stringWithFormat:@"%i", counterA];
    
    if (counterA < 0) // Once timer goes below 0, reset all variables.
    {

        secondsA.text = @"10 Second Timer";
        
        [timerA invalidate];
        startA = TRUE;
        counterA = 10;
        
    }
    
}

-(IBAction)start:(id)sender {
    
    if(startA == TRUE) //Check that another instance is not already running.
    {
        secondsA.text = @"10";
        startA = FALSE;
        timerA = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    }
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
