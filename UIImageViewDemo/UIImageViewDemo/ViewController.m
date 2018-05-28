//
//  ViewController.m
//  UIImageViewDemo
//
//  Created by 赵文龙 on 2018/5/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *loadImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置内容图片
    self.imageView.image = [UIImage imageNamed:@"demo.png"];
    //如果有时图片显示有问题，需要这是contentMode
    self.imageView.contentMode = UIViewContentModeCenter;
    //其中还有铺满整个ImageView的，有按照某一个方向进行裁剪的，等等模式
    
    
    
    
    self.loadImageView.contentMode = UIViewContentModeCenter;
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i=0; i<28; i++) {
        [array addObject:[UIImage imageNamed:[[NSString alloc] initWithFormat:@"loading_000%02d",i]]];
    }
    //设置动画数组图片
    self.loadImageView.animationImages = array;
    //设置一个动画的时长
    self.loadImageView.animationDuration = 1.0;
    //设置动画循环的次数（0是无线循环）
    self.loadImageView.animationRepeatCount = 0;
    //开始动画
    [self.loadImageView startAnimating];
    
    //结束动画
//    [self.loadImageView stopAnimating];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
