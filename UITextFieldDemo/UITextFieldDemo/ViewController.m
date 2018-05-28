//
//  ViewController.m
//  UITextFieldDemo
//
//  Created by 赵文龙 on 2018/5/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置输入框提示语句
    self.textField.placeholder = @"这是一个提示";
    //可以通过KVC形式来改变输入框提示语句的颜色的字体大小
    [self.textField setValue:[UIColor redColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.textField setValue:[UIFont systemFontOfSize:17] forKeyPath:@"_placeholderLabel.font"];
    //也可以通过attributedPlaceholder这个属性来修改提示语句的属性
    
    //设置输入框风格
    self.textField.borderStyle = UITextBorderStyleNone;
    //设置键盘格式
    self.textField.keyboardType = UIKeyboardTypeASCIICapable;
    //设置返回键的样式
    self.textField.returnKeyType = UIReturnKeyGo;
    //设置是否为密码输入框
    self.textField.secureTextEntry = YES;
    //设置始终显示清除按钮
    self.textField.clearButtonMode = UITextFieldViewModeAlways;
    //设置每次输入的时候清除以前的内容
    self.textField.clearsOnBeginEditing = YES;
    
    //设置输入框代理，当需要监听输入的内容时
    self.textField.delegate = self;
    
    //下面这些是一些不太常用的属性
    
    //设置左边的视图
//    self.textField.leftView = nil;
//    self.textField.leftViewMode = UITextFieldViewModeAlways;
    //设置右边的视图
//    self.textField.rightView = nil;
//    self.textField.rightViewMode = UITextFieldViewModeAlways;
    
    //设置自定义键盘视图
//    self.textField.inputAccessoryView = nil;
    
}

//return键被点击
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    return YES;
}
//即将开始编辑
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}
//即将结束编辑
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}
//正在编辑，这里一般处理被编辑的数据
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return YES;
}

//已经开始编辑
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    
}

//已经结束编辑
-(void)textFieldDidEndEditing:(UITextField *)textField {
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /*
     回收键盘，在这个方法里，只是临时写，该方法也可以写到其他的事件里，不过一般使用第三方库来解决，IQKeyBoardManager
     */
    [self.textField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
