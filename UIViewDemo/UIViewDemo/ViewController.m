//
//  ViewController.m
//  UIViewDemo
//
//  Created by 赵文龙 on 2018/5/24.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong,nonatomic) UIView *mineView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化一个view
    self.mineView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    //设置view的位置和大小
    self.mineView.frame = CGRectMake(100, 100, 100, 100);
    //设置view的背景颜色
    self.mineView.backgroundColor = [UIColor redColor];
    //设置view的边框颜色
    self.mineView.layer.borderColor = [UIColor greenColor].CGColor;
    //设置view的边框宽度
    self.mineView.layer.borderWidth = 3;
    //设置view的圆角
    self.mineView.layer.cornerRadius = 10;
    self.mineView.layer.maskedCorners = YES;
    
    /*
     因为阴影超出了view的图层，所以圆角和阴影不能同时设置，如何达到圆角和阴影的效果后面会讲到。
     */
    //设置阴影
    self.mineView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.mineView.layer.shadowRadius = 10;
    self.mineView.layer.shadowOffset = CGSizeMake(0, 10);
    self.mineView.layer.shadowOpacity = 0.5;
    
    //将view添加到视图上
    [self.view addSubview:self.mineView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
