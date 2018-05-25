//
//  ViewController.m
//  UIButtonDemo
//
//  Created by 赵文龙 on 2018/5/25.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置按钮正常状态下的标题
    [self.firstButton setTitle:@"正常状态" forState:UIControlStateNormal];
    //设置按钮选择状态下的标题
    [self.firstButton setTitle:@"选择状态" forState:UIControlStateSelected];
    //设置按钮高亮状态下的标题
    [self.firstButton setTitle:@"高亮状态" forState:UIControlStateHighlighted];
    //设置按钮正常状态下的标题颜色
    [self.firstButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //设置按钮选择状态下的标题颜色
    [self.firstButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    //设置按钮高亮状态下的标题颜色
    [self.firstButton setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    /*
     当然这里如果有需要也可以设置各个状态下的标题图片和背景图片,
     这里因为缺少图片资源的关系，这里暂不演示，有兴趣的可以自己试一试。
     */
//    [self.firstButton setImage:nil forState:UIControlStateNormal];
//    [self.firstButton setBackgroundImage:nil forState:UIControlStateNormal];
    
    
    
    //设置标题字体大小
    self.firstButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //设置标题偏移量
    [self.firstButton setTitleEdgeInsets:UIEdgeInsetsMake(0, -10, 0, 0)];
    /*
     设置标题图片偏移量，
     */
//    [self.firstButton setImageEdgeInsets:UIEdgeInsetsMake(0, 10, 0, 0)];
    
    
    //给按钮添加点击事件
    [self.firstButton addTarget:self action:@selector(firstButtonClick:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)firstButtonClick:(UIButton *)button {
    if (button.isSelected) {
        button.selected = NO;
    }
    else {
        button.selected = YES;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
