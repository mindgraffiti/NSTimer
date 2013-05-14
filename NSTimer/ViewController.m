//
//  ViewController.m
//  NSTimer
//
//  Created by Thuy Copeland on 5/13/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /* First part of lecture
    // create a new date, save it to today
	NSDate *date = [NSDate date];
    
    // create a new date formatter
    dateFormatter = [[NSDateFormatter alloc] init];
    // you can also try this:
    // dateFormatter = [NSDateFormatter new];
    
    // set your date format
    [dateFormatter setDateFormat:@"HH:mm:ss.S"];
     
    
    // set the date with a nice format, send it to the view
    self.timerLabel.text = [dateFormatter stringFromDate:date];
     */
    
    // set the button title
    [self.startStop setTitle:@"Start" forState:UIControlStateNormal];
    totalTime = [NSNumber numberWithDouble:0.00];
    self.timerLabel.text = [NSString stringWithFormat:@"%0.2lf", [totalTime doubleValue]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pollTime{
    // create a new date, to catch right now.
    // NSDate *today = [NSDate date];
    // self.timerLabel.text = [dateFormatter stringFromDate:today];
    
    
    totalTime = [NSNumber numberWithDouble:[totalTime doubleValue] + 0.1];
    self.timerLabel.text = [NSString stringWithFormat:@"%0.2lf", [totalTime doubleValue]];
}

- (IBAction)startStopPressed:(id)sender{
    // if our timer is running
    if (timer.isValid) {
        [timer invalidate];
        [self.startStop setTitle:@"Start" forState:UIControlStateNormal];
    } else {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(pollTime) userInfo:nil repeats:YES];
        [self.startStop setTitle:@"Stop" forState:UIControlStateNormal];
    }
}
@end
