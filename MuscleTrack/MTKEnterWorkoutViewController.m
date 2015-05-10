//
//  ViewController.m
//  MuscleTrack
//
//  Created by Administrator on 5/9/15.
//  Copyright (c) 2015 MuscleTrack. All rights reserved.
//

#import "MTKEnterWorkoutViewController.h"

//////////////////////////////////////////////////////////////////////////////////////////////////
@interface MTKEnterWorkoutViewController ()


@property (nonatomic, strong) UIButton *chestButton;

@end
//////////////////////////////////////////////////////////////////////////////////////////////////
@implementation MTKEnterWorkoutViewController

# pragma 
# pragma overrides
- (instancetype)init {
    self = [super init];
    if (self) {
        [self.view setBackgroundColor:[UIColor blueColor]];
        [self addBodyButtons];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma 
# pragma MTKEnterWorkoutViewController 

- (void)addBodyButtons {
    self.chestButton = [UIButton new];
    [self.chestButton setBackgroundColor:[UIColor greenColor]];
    
//    
//    [NSBundle pathForResource:@"Abs.png" ofType:@"image" inDirectory:@"icons"];
//    UIImage *image = [UIImage imageWithContentsOfFile:@"Abs.png"];
//    
//    
////    [self.chestButton setImage:image forState:UIControlStateNormal];
    
    [self.chestButton setImage:[UIImage imageNamed:@"Abs"] forState:UIControlStateNormal];
    [self.chestButton sizeToFit];
    [self.chestButton setFrame:CGRectMake(23, 22, 222, 222)];
    
    [self.view addSubview:self.chestButton];
}

@end
