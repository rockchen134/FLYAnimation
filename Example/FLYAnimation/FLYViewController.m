//
//  FLYViewController.m
//  FLYAnimation
//
//  Created by rockchen134 on 02/03/2017.
//  Copyright (c) 2017 rockchen134. All rights reserved.
//

#import "FLYViewController.h"
#import "UIView+FLYAnimationComponent.h"
#import "FLYPopupAnimation.h"

@interface FLYViewController ()

@property (nonatomic, weak) IBOutlet UIButton *popupButton;

@end

@implementation FLYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popupButtonAction:(id)sender {
    
    CGRect frame = CGRectMake(0.0f, 0.0f, 200.0f, 200.0f);
    frame.origin.x = (self.view.frame.size.width - frame.size.width) / 2.0f;
    frame.origin.y = (self.view.frame.size.height - frame.size.height) / 2.0f;
    
    UIView *popView = [[UIView alloc] initWithFrame:frame];
    [popView setBackgroundColor:[UIColor yellowColor]];
    
    NSObject<FLYAnimationProtocol> *animation = [[FLYPopupAnimation alloc] initWithComponent:popView];
    [animation show];
    
    [self.view addSubview:popView];
}

@end
