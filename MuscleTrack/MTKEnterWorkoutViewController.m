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
@property (nonatomic, strong) UIButton *absButton;
@property (nonatomic, strong) UIButton *quadsButton;

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

    self.absButton = [UIButton new];
    self.quadsButton = [UIButton new];
    
    [self.chestButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.absButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.quadsButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
//
//    [NSBundle pathForResource:@"Abs.png" ofType:@"image" inDirectory:@"icons"];
//    UIImage *image = [UIImage imageWithContentsOfFile:@"Abs.png"];
//    
//    
////    [self.chestButton setImage:image forState:UIControlStateNormal];
    
    [self.chestButton setImage:[UIImage imageNamed:@"Chest"] forState:UIControlStateNormal];
    [self.chestButton setImage:[UIImage imageNamed:@"Chest_red"] forState:UIControlStateSelected];
    [self.chestButton sizeToFit];
    [self.chestButton setFrame:CGRectMake(23, 22, 322, 222)];
    [self.view addSubview:self.chestButton];
    
    [self.absButton setImage:[UIImage imageNamed:@"Abs"] forState:UIControlStateNormal];
    [self.absButton setImage:[UIImage imageNamed:@"Abs_red"] forState:UIControlStateSelected];
    [self.absButton sizeToFit];
    [self.absButton setFrame:CGRectMake(73, 220, 222, 222)];
    [self.view addSubview:self.absButton];
    
    [self.quadsButton setImage:[UIImage imageNamed:@"Quads"] forState:UIControlStateNormal];
    [self.quadsButton setImage:[UIImage imageNamed:@"Quads_red"] forState:UIControlStateSelected];
    [self.quadsButton sizeToFit];
    [self.quadsButton setFrame:CGRectMake(73, self.absButton.frame.origin.y + self.absButton.frame.size.height+20, 222, 222)];
    
    [self.view addSubview:self.quadsButton];
    
    
}

# pragma 
# pragma button handlers

- (void)buttonPressed:(UIButton *)button {
    if ([button isSelected]) {
        [button setSelected:NO];
    } else {
        [button setSelected:YES];
    }
}


@end
