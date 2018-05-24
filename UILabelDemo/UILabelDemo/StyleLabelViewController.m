//
//  StyleLabelViewController.m
//  UILabelDemo
//
//  Created by 赵文龙 on 2018/5/24.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "StyleLabelViewController.h"

@interface StyleLabelViewController ()
@property (weak, nonatomic) IBOutlet UILabel *styleLabel;

@end

@implementation StyleLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"这只是一个文本而已，没有其他的作用。这只是一个文本而已，没有其他的作用。这只是一个文本而已，没有其他的作用。这只是一个文本而已，没有其他的作用"];
    //设置指定区域文本的字体大小
    [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, 10)];
    [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:NSMakeRange(11, str.length-11)];
    //设置指定区域文本的字体颜色
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 20)];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(21, str.length-21)];
    //设置指定区域文本的字间距
    [str addAttribute:NSKernAttributeName value:@3 range:NSMakeRange(0, 15)];
    [str addAttribute:NSKernAttributeName value:@5 range:NSMakeRange(15, str.length-15)];
    //还有一些其他的属性，这里就不一一列明，有需要的可以自己看看，试一试。
    
    
    
    
    //设置不限行数显示
    self.styleLabel.numberOfLines = 0;
    //这是多样式文本内容
    self.styleLabel.attributedText = str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
