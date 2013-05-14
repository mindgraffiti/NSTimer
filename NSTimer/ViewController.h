//
//  ViewController.h
//  NSTimer
//
//  Created by Thuy Copeland on 5/13/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    // if I don't need to access it outside, then I don't need to create a property for it.
    NSTimer *timer;
    NSDateFormatter *dateFormatter;
    NSNumber *totalTime;
    // local variable declaration
}
// global variable declaration
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property (strong, nonatomic) IBOutlet UIButton *startStop;
- (IBAction)startStopPressed:(id)sender;
@end
