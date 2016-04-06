//
//  ViewController.m
//  ertyui
//
//  Created by WiKi on 16/4/5.
//  Copyright © 2016年 WiKi. All rights reserved.
//

#import "ViewController.h"
#import "JMHoledView.h"


@interface ViewController ()<JMHoledViewDelegate,UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];

    UIImageView *imgV= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"风雨兼程.jpg"]];
    imgV.frame = self.view.bounds;
    [self.view addSubview:imgV];
    
    
    
    self.holedView = [[JMHoledView alloc] init];
    [self.view addSubview:self.holedView];
    self.holedView.frame = self.view.bounds;
    
    self.holedView.holeViewDelegate = self;

    
    
    [self.holedView addHoleCircleCenteredOnPosition:CGPointMake(80.0f, 45.0f) andHoleWeith:80 andHoleHeight:60];
    
    [self.holedView addHoleRoundedRectOnRect:CGRectMake(5.0f, 250.0f, 150.0f, 50.0f) withCornerRadius:15.0f];



    [self.holedView addHoleRectOnRect:CGRectMake(10.0f, 200.0f, 300.0f, 30.0f)];
    
    
    UIImageView *imgVV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GuideMyInfoDetail"]];
    [imgVV sizeToFit];

    [self.holedView addHCustomView:imgVV onRect:CGRectMake(160.0f, 50.0f, imgVV.frame.size.width,imgVV.frame.size.height)];
    
}



#pragma mark - JMHoledViewDelegate

- (void)holedView:(JMHoledView *)holedView didSelectHoleAtIndex:(NSUInteger)index
{
    NSLog(@"%s %ld", __PRETTY_FUNCTION__,(long)index);
    
}


- (UIView *)viewForDemo
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 350.0F, 200.0f, 50.0f)];
    [label setBackgroundColor:[UIColor clearColor]];
    label.layer.borderColor = [UIColor whiteColor].CGColor;
    label.layer.borderWidth = 1.0f;
    label.layer.cornerRadius = 10.0f;
    [label setTextColor:[UIColor whiteColor]];
    label.text = @"This control can be use to Highlight informations.";
    label.numberOfLines = 2;
    label.font = [UIFont systemFontOfSize:14.0f];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
