//
//  ViewController.m
//  UIScrollViewDemo
//
//  Created by 赵文龙 on 2018/5/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong,nonatomic) UIScrollView *scrollView;

@end

@implementation ViewController

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.scrollView.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
    //设置scrollView的内容大小，这个大小我们只是演示展示多张图片时的内容大小，普通的可以根据自身的需要来设置大小
    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.frame) * 4, CGRectGetHeight(self.view.frame));
    //这里只是我们设置里面标签的位置，只是为了演示效果
    for (int i=0; i<self.scrollView.subviews.count; i++) {
        UIView *view = self.scrollView.subviews[i];
        view.frame = CGRectMake(100 + CGRectGetWidth(self.view.frame) * i, 100, 100, 30);
        [view sizeToFit];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView = [[UIScrollView alloc] init];
    //因为我们的内容有四个屏幕那么大，所以我们添加四个标签
    for (int i=0; i<4; i++) {
        UILabel *label = [[UILabel alloc] init];
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:17];
        label.text = [[NSString alloc] initWithFormat:@"这是第%d个标签",i];
        [self.scrollView addSubview:label];
    }
    
    //设置不能滚动到边界外面，当然你也可以只设置某一个方向滚动到边界外面(这里指的是手拖)
    self.scrollView.bounces = NO;
//    self.scrollView.alwaysBounceVertical = YES;
//    self.scrollView.alwaysBounceHorizontal = YES;
    //我们可以给一个背景颜色来看下bounces的效果
    self.scrollView.backgroundColor = [UIColor redColor];
    //设置是否显示水平和垂直显示条
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    //设置是否可以分页滚动
    self.scrollView.pagingEnabled = YES;
    
    
    //可以看做是内边距，这个属性一般用于调整界面使用
//    self.scrollView.contentInset = UIEdgeInsetsMake(0, -20, 0, 0);
    //设置滚动的偏移量，一般配合事件的触发使用
//    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    //设置scrollview的代理
    self.scrollView.delegate = self;
    [self.view addSubview:self.scrollView];
    
    //当然这里也有放大和缩小的属性
//    self.scrollView.minimumZoomScale = 1.0;
    //当最大缩放比例大于最小缩放比例时，就会打开缩放
//    self.scrollView.maximumZoomScale = 2.0;
    //当缩放时，需要在代理方法里指定那个空间缩放
}

/*
 这里列出几个常用代理方法
 */

//滚动时就会执行该方法
-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
}

//即将开始滚动
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"开始滚动");
}

//滚动已经完成
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"滚动已经完成");
}

//即将滚动完成
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"滚动即将完成");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
