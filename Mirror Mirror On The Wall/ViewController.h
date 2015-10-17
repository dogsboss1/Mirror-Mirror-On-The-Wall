//
//  ViewController.h
//  Mirror Mirror On The Wall
//
//  Created by felix king on 17/10/2015.
//  Copyright © 2015 Felix King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *cameraFeedIamge;

- (IBAction)infoButtonPressed:(UIButton *)sender;
- (IBAction)flipImageButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *infoButton;
@property (weak, nonatomic) IBOutlet UIButton *flipImageButton;
@property (weak, nonatomic) IBOutlet UIView *infomationView;
@property (weak, nonatomic) IBOutlet UILabel *infoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *exitLabel;

@property (weak, nonatomic) IBOutlet UITextView *infoTextView;

@property BOOL shouldInfoViewDisplay;

@end

