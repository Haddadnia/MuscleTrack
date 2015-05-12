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

@property (nonatomic, strong) UIButton *trapsButton;
@property (nonatomic, strong) UIButton *chestButton;
@property (nonatomic, strong) UIButton *absButton;
@property (nonatomic, strong) UIButton *quadsButton;
@property (nonatomic, strong) UIButton *calvesButton;

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
    
    self.trapsButton = [UIButton new];
    self.chestButton = [UIButton new];
    self.absButton = [UIButton new];
    self.quadsButton = [UIButton new];
    self.calvesButton = [UIButton new];
    
    [self.trapsButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.chestButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.absButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.quadsButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.calvesButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
//
//    [NSBundle pathForResource:@"Abs.png" ofType:@"image" inDirectory:@"icons"];
//    UIImage *image = [UIImage imageWithContentsOfFile:@"Abs.png"];
//    
//    
////    [self.chestButton setImage:image forState:UIControlStateNormal];

    
    [self.trapsButton setImage:[UIImage imageNamed:@"Traps"] forState:UIControlStateNormal];
    [self.trapsButton setImage:[UIImage imageNamed:@"Traps_red"] forState:UIControlStateSelected];
    [self.trapsButton sizeToFit];
    NSInteger trapsWidth = 200;
    NSInteger trapsHeight = trapsWidth-150;
    [self.trapsButton setFrame:CGRectMake(self.view.center.x - trapsWidth/2, 50, trapsWidth, trapsHeight)];
    [self.view addSubview:self.trapsButton];
    
    
    [self.chestButton setImage:[UIImage imageNamed:@"Chest"] forState:UIControlStateNormal];
    [self.chestButton setImage:[UIImage imageNamed:@"Chest_red"] forState:UIControlStateSelected];
    [self.chestButton sizeToFit];
    NSInteger chestWidth = 200;
    NSInteger chestHeight = chestWidth-120;
    [self.chestButton setFrame:CGRectMake(self.view.center.x - chestWidth/2, 120, chestWidth, chestHeight)];
    [self.view addSubview:self.chestButton];
    

    [self.absButton setImage:[UIImage imageNamed:@"Abs"] forState:UIControlStateNormal];
    [self.absButton setImage:[UIImage imageNamed:@"Abs_red"] forState:UIControlStateSelected];
    [self.absButton sizeToFit];
    NSInteger absWidth = 125;
    NSInteger absHeight = absWidth;
    [self.absButton setFrame:CGRectMake(self.view.center.x - absWidth/2, 220, absWidth, absHeight)];
    [self.view addSubview:self.absButton];
    
    [self.quadsButton setImage:[UIImage imageNamed:@"Quads"] forState:UIControlStateNormal];
    [self.quadsButton setImage:[UIImage imageNamed:@"Quads_red"] forState:UIControlStateSelected];
    [self.quadsButton sizeToFit];
    NSInteger quadsWidth = 150;
    NSInteger quadsHeight = quadsWidth;
    [self.quadsButton setFrame:CGRectMake(self.view.center.x - quadsWidth/2, self.absButton.frame.origin.y + self.absButton.frame.size.height+20, quadsWidth, quadsHeight)];
    [self.view addSubview:self.quadsButton];
    
    [self.calvesButton setImage:[UIImage imageNamed:@"Quads"] forState:UIControlStateNormal];
    [self.calvesButton setImage:[UIImage imageNamed:@"Quads_red"] forState:UIControlStateSelected];
    [self.calvesButton sizeToFit];
    NSInteger calvesWidth = 125;
    NSInteger calvesHeight = calvesWidth;
    [self.calvesButton setFrame:CGRectMake(self.view.center.x - calvesWidth/2, self.quadsButton.frame.origin.y + self.quadsButton.frame.size.height+20, calvesWidth, calvesHeight)];
    [self.view addSubview:self.calvesButton];
    
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
