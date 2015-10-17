//
//  ViewController.m
//  Mirror Mirror On The Wall
//
//  Created by felix king on 17/10/2015.
//  Copyright © 2015 Felix King. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize infoButton, flipImageButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.infomationView.hidden = YES;
    
    self.shouldInfoViewDisplay = NO;
    
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.view addGestureRecognizer:singleTapGestureRecognizer];
    
    [self updateOutlets];
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                              message:@"Device has no camera"
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        
        [myAlertView show];
        
    }
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    if (self.infomationView.isHidden == NO) {
        self.infomationView.hidden = YES;
    }
    [self updateOutlets];
}

- (void) updateOutlets {
    if (self.shouldInfoViewDisplay == YES) {
        [infoButton setEnabled:NO];
        [flipImageButton setEnabled:NO];
        self.infomationView.hidden = NO;
        self.shouldInfoViewDisplay = NO;
    }
    else {
        [infoButton setEnabled:YES];
        [flipImageButton setEnabled:YES];
        self.infomationView.hidden = YES;
    }
}

- (IBAction)infoButtonPressed:(UIButton *)sender {
    self.shouldInfoViewDisplay = YES;
    [self updateOutlets];
}

- (IBAction)flipImageButtonPressed:(UIButton *)sender {
    
}

@end
