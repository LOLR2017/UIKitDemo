//
//  CommonLabelViewController.m
//  UILabelDemo
//
//  Created by 赵文龙 on 2018/5/24.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "CommonLabelViewController.h"

@interface CommonLabelViewController ()
@property (weak, nonatomic) IBOutlet UILabel *commonLabel;

@end

@implementation CommonLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //设置文本内容
    self.commonLabel.text = @"这是一个文本";
    //设置文本字体颜色
    self.commonLabel.textColor = [UIColor redColor];
    //设置文本字体大小
    self.commonLabel.font = [UIFont systemFontOfSize:17];
    //设置文本对齐方式
    self.commonLabel.textAlignment = NSTextAlignmentLeft;
    //设置文本多行显示(注：为设为0，会变为自适应行数)
    self.commonLabel.numberOfLines = 2;
    //设置换行时的方式
    self.commonLabel.lineBreakMode = NSLineBreakByCharWrapping;
    
    //设置文本投影颜色
    self.commonLabel.shadowColor = [UIColor greenColor];
    //设置文本投影位置(与系统坐标一致)
    self.commonLabel.shadowOffset = CGSizeMake(0, 5);
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
