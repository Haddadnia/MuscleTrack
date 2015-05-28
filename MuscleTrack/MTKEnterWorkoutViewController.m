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



@property (nonatomic, strong) NSArray *bodyButtons;

@property (nonatomic, strong) UIButton *trapsButton;
@property (nonatomic, strong) UIButton *chestButton;
@property (nonatomic, strong) UIButton *absButton;
@property (nonatomic, strong) UIButton *quadsButton;
@property (nonatomic, strong) UIButton *calvesButton;

//   arms
@property (nonatomic, strong) UIButton *shoulderRightButton;
@property (nonatomic, strong) UIButton *shoulderLeftButton;
@property (nonatomic, strong) UIButton *tricepRightButton;
@property (nonatomic, strong) UIButton *tricepLeftButton;
@property (nonatomic, strong) UIButton *bicepRightButton;
@property (nonatomic, strong) UIButton *bicepLeftButton;
@property (nonatomic, strong) UIButton *forearmRightButton;
@property (nonatomic, strong) UIButton *forearmLeftButton;

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
    self.bicepLeftButton = [UIButton new];
    self.bicepRightButton = [UIButton new];
    self.forearmLeftButton = [UIButton new];
    self.forearmRightButton = [UIButton new];
    self.shoulderLeftButton = [UIButton new];
    self.shoulderRightButton = [UIButton new];
    self.tricepLeftButton = [UIButton new];
    self.tricepRightButton = [UIButton new];

    self.bodyButtons = [NSArray arrayWithObjects:self.trapsButton,self.chestButton,self.absButton,self.quadsButton,self.calvesButton,self.bicepRightButton,self.bicepLeftButton,self.forearmLeftButton,self.forearmRightButton,self.shoulderRightButton,self.shoulderLeftButton,self.tricepLeftButton,self.tricepRightButton, nil];

    
    [self.trapsButton setImage:[UIImage imageNamed:@"Traps"] forState:UIControlStateNormal];
    [self.trapsButton setImage:[UIImage imageNamed:@"Traps_red"] forState:UIControlStateSelected];
    [self.trapsButton sizeToFit];
    NSInteger trapsWidth = 200;
    NSInteger trapsHeight = trapsWidth-170;
    [self.trapsButton setFrame:CGRectMake(self.view.center.x - trapsWidth/2, 80, trapsWidth, trapsHeight)];
    
    [self.chestButton setImage:[UIImage imageNamed:@"Chest"] forState:UIControlStateNormal];
    [self.chestButton setImage:[UIImage imageNamed:@"Chest_red"] forState:UIControlStateSelected];
    [self.chestButton sizeToFit];
    NSInteger chestWidth = 200;
    NSInteger chestHeight = chestWidth-120;
    [self.chestButton setFrame:CGRectMake(self.view.center.x - chestWidth/2, 120, chestWidth, chestHeight)];

    [self.absButton setImage:[UIImage imageNamed:@"Abs"] forState:UIControlStateNormal];
    [self.absButton setImage:[UIImage imageNamed:@"Abs_red"] forState:UIControlStateSelected];
    [self.absButton sizeToFit];
    NSInteger absWidth = 125;
    NSInteger absHeight = absWidth;
    [self.absButton setFrame:CGRectMake(self.view.center.x - absWidth/2, 220, absWidth, absHeight)];
    
    [self.quadsButton setImage:[UIImage imageNamed:@"Quads"] forState:UIControlStateNormal];
    [self.quadsButton setImage:[UIImage imageNamed:@"Quads_red"] forState:UIControlStateSelected];
    [self.quadsButton sizeToFit];
    NSInteger quadsWidth = 120;
    NSInteger quadsHeight = quadsWidth;
    [self.quadsButton setFrame:CGRectMake(self.view.center.x - quadsWidth/2, self.absButton.frame.origin.y + self.absButton.frame.size.height+20, quadsWidth, quadsHeight)];
    
    [self.calvesButton setImage:[UIImage imageNamed:@"Quads"] forState:UIControlStateNormal];
    [self.calvesButton setImage:[UIImage imageNamed:@"Quads_red"] forState:UIControlStateSelected];
    [self.calvesButton sizeToFit];
    NSInteger calvesWidth = 100;
    NSInteger calvesHeight = calvesWidth;
    [self.calvesButton setFrame:CGRectMake(self.view.center.x - calvesWidth/2, self.quadsButton.frame.origin.y + self.quadsButton.frame.size.height+20, calvesWidth, calvesHeight)];
    
    //TODO
    

    
    //CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);
    

    
    [self.shoulderLeftButton setImage:[UIImage imageNamed:@"Shoulder_left"] forState:UIControlStateNormal];
    [self.shoulderLeftButton setImage:[UIImage imageNamed:@"Shoulder_left_red"] forState:UIControlStateSelected];
    [self.shoulderLeftButton sizeToFit];
    [self.shoulderLeftButton setFrame:CGRectMake(self.chestButton.frame.origin.x - 55, 90, 50, 50)];
    
    [self.shoulderRightButton setImage:[UIImage imageNamed:@"Shoulder_right"] forState:UIControlStateNormal];
    [self.shoulderRightButton setImage:[UIImage imageNamed:@"Shoulder_right_red"] forState:UIControlStateSelected];
    [self.shoulderRightButton sizeToFit];
    [self.shoulderRightButton setFrame:CGRectMake(self.trapsButton.frame.origin.x + self.trapsButton.frame.size.width + 15, 90, 50, 50)];
    
    [self.tricepLeftButton setImage:[UIImage imageNamed:@"Tricep_left"] forState:UIControlStateNormal];
    [self.tricepLeftButton setImage:[UIImage imageNamed:@"Tricep_left_red"] forState:UIControlStateSelected];
    [self.tricepLeftButton sizeToFit];
    [self.tricepLeftButton setFrame:CGRectMake(self.chestButton.frame.origin.x - 55, 140, 25, 40)];
    
    [self.tricepRightButton setImage:[UIImage imageNamed:@"Tricep_right"] forState:UIControlStateNormal];
    [self.tricepRightButton setImage:[UIImage imageNamed:@"Tricep_right_red"] forState:UIControlStateSelected];
    [self.tricepRightButton sizeToFit];
    [self.tricepRightButton setFrame:CGRectMake(self.chestButton.frame.origin.x + self.chestButton.frame.size.width + 35, 140, 25, 40)];
    
    
    NSInteger bicepWidth = 40;
    NSInteger bicepHeight = 90;
    
    [self.bicepLeftButton setImage:[UIImage imageNamed:@"Bicep"] forState:UIControlStateNormal];
    [self.bicepLeftButton setImage:[UIImage imageNamed:@"Bicep_red"] forState:UIControlStateSelected];
    [self.bicepLeftButton sizeToFit];
    [self.bicepLeftButton setFrame:CGRectMake(self.chestButton.frame.origin.x-50, self.tricepLeftButton.frame.origin.y + self.tricepLeftButton.frame.size.height + 10, bicepWidth, bicepHeight)];
    
    [self.bicepRightButton setImage:[UIImage imageNamed:@"Bicep"] forState:UIControlStateNormal];
    [self.bicepRightButton setImage:[UIImage imageNamed:@"Bicep_red"] forState:UIControlStateSelected];
    [self.bicepRightButton sizeToFit];
    [self.bicepRightButton setFrame:CGRectMake(self.self.tricepRightButton.frame.origin.x - 20, self.tricepLeftButton.frame.origin.y + self.tricepLeftButton.frame.size.height + 10, bicepWidth, bicepHeight)];
    
    NSInteger forearamWidth = 35;
    NSInteger forearamHeight = 85;
    
    [self.forearmLeftButton setImage:[UIImage imageNamed:@"Forearm"] forState:UIControlStateNormal];
    [self.forearmLeftButton setImage:[UIImage imageNamed:@"Forearm_red"] forState:UIControlStateSelected];
    [self.forearmLeftButton sizeToFit];
    [self.forearmLeftButton setFrame:CGRectMake(self.bicepLeftButton.frame.origin.x + (bicepWidth - forearamWidth)/2, self.bicepLeftButton.frame.origin.y + self.bicepLeftButton.frame.size.height + 10, forearamWidth, forearamHeight)];

    
    [self.forearmRightButton setImage:[UIImage imageNamed:@"Forearm"] forState:UIControlStateNormal];
    [self.forearmRightButton setImage:[UIImage imageNamed:@"Forearm_red"] forState:UIControlStateSelected];
    [self.forearmRightButton sizeToFit];
    [self.forearmRightButton setFrame:CGRectMake(self.bicepRightButton.frame.origin.x + (bicepWidth - forearamWidth)/2, self.bicepLeftButton.frame.origin.y + self.bicepLeftButton.frame.size.height + 10, forearamWidth, forearamHeight)];

    //////////////////////////////////////////////////////////////////////
    
    
    for (UIButton *button in self.bodyButtons) {
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
}

# pragma 
# pragma button handlers

- (void)buttonPressed:(UIButton *)button {
    
    
    
    if (button == self.bicepLeftButton || button == self.bicepRightButton) {
        if ([button isSelected]) {
            [self.bicepLeftButton setSelected:NO];
            [self.bicepRightButton setSelected:NO];
        } else {
            [self.bicepLeftButton setSelected:YES];
            [self.bicepRightButton setSelected:YES];
        }
    } else if (button == self.forearmRightButton || button == self.forearmLeftButton) {
        if ([button isSelected]) {
            [self.forearmLeftButton setSelected:NO];
            [self.forearmRightButton setSelected:NO];
        } else {
            [self.forearmRightButton setSelected:YES];
            [self.forearmLeftButton setSelected:YES];
        }
    } else if (button == self.tricepRightButton || button == self.tricepLeftButton) {
        if ([button isSelected]) {
            [self.tricepRightButton setSelected:NO];
            [self.tricepLeftButton setSelected:NO];
        } else {
            [self.tricepRightButton setSelected:YES];
            [self.tricepLeftButton setSelected:YES];
        }
    } else if (button == self.shoulderRightButton || button == self.shoulderLeftButton) {
        if ([button isSelected]) {
            [self.shoulderRightButton setSelected:NO];
            [self.shoulderLeftButton setSelected:NO];
        } else {
            [self.shoulderRightButton setSelected:YES];
            [self.shoulderLeftButton setSelected:YES];
        }
    } else {
        if ([button isSelected]) {
            [button setSelected:NO];
        } else {
            [button setSelected:YES];
        }
    }
    

}


@end
