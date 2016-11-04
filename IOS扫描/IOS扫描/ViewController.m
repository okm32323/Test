//
//  ViewController.m
//  BarCodeDemo
//
//  Created by Zilu.Ma on 16/7/18.
//  Copyright © 2016年 Zilu.Ma. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

@interface ViewController ()

{
    UILabel *_label;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _label = [[UILabel alloc] init];
    _label.center = CGPointMake(self.view.bounds.size.width/2, 250);
    _label.bounds = CGRectMake(0, 0, 250, 100);
    _label.textAlignment = 1;
    _label.numberOfLines = 0;
    [self.view addSubview:_label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(120, 150, 40, 40);
    [btn setTitle:@"扫描" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    CALayer *btnLayer = [CALayer layer];
    btnLayer.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5].CGColor;
    btnLayer.position = CGPointMake(20, 20);
    btnLayer.bounds = CGRectMake(0, 0, 40, 40);
    [btn.layer addSublayer:btnLayer];
}



- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    _label.text = _messge;
}

- (void)btnClick{
    
    MainViewController *mainVC = [[MainViewController alloc] init];
    mainVC.VC = self;
    [self.navigationController pushViewController:mainVC animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
