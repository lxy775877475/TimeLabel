//
//  ViewController.m
//  XYTimeLabel
//
//  Created by XinYu on 16/12/9.
//  Copyright © 2016年 XinYu. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Time.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
//    label.text = @"sdjajdkasjkasfjajfjakjf";
    label.backgroundColor = [UIColor redColor];
    [label setTimeTotal:60];
    [label startTime];
    label.center = self.view.center;
    [self.view addSubview:label];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
