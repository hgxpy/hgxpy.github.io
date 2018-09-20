//
//  ViewController.m
//  autofillDemo
//
//  Created by 华观陈 on 2018/9/20.
//  Copyright © 2018年 华观陈. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    UILabel *userLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 100, 200, 20)];
    userLabel.font = [UIFont systemFontOfSize:14.0f];
    userLabel.textColor = [UIColor blackColor];
    userLabel.text = @"账号";
    [self.view addSubview:userLabel];
    // 用户名
    UITextField *userField = [[UITextField alloc] initWithFrame:CGRectMake(30, 130, 200, 30)];
    userField.layer.borderColor= [UIColor grayColor].CGColor;
    userField.layer.borderWidth= 1.0f;
    userField.placeholder = @"";
    userField.font = [UIFont systemFontOfSize:14.0f];
    userField.textColor = [UIColor blackColor];
    userField.keyboardType = UIKeyboardTypeAlphabet;
    userField.returnKeyType = UIReturnKeyDone;
    userField.textContentType = UITextContentTypeUsername;
    userField.delegate = self;
//    [userField addTarget:self action:@selector(textChanged:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:userField];
    
    UILabel *codeLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 170, 200, 20)];
    codeLabel.font = [UIFont systemFontOfSize:14.0f];
    codeLabel.textColor = [UIColor blackColor];
    codeLabel.text = @"密码";
    [self.view addSubview:codeLabel];
    // 密码
    UITextField *codeField = [[UITextField alloc] initWithFrame:CGRectMake(30, 200, 200, 30)];
    codeField.layer.borderColor= [UIColor grayColor].CGColor;
    codeField.layer.borderWidth= 1.0f;
    codeField.placeholder = @"";
    codeField.font = [UIFont systemFontOfSize:14.0f];
    codeField.textColor = [UIColor blackColor];
    codeField.keyboardType = UIKeyboardTypeAlphabet;
    codeField.returnKeyType = UIReturnKeyDone;
    codeField.textContentType = UITextContentTypePassword;
    codeField.secureTextEntry = YES;
    codeField.delegate = self;
    //    [userField addTarget:self action:@selector(textChanged:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:codeField];
    
    
    UIButton *login = [[UIButton alloc] initWithFrame:CGRectMake(30, 250, 50, 30)];
    [login setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [login.titleLabel setFont:[UIFont systemFontOfSize:14.0f]];
    [login setTitle:@"登录" forState:UIControlStateNormal];
    login.layer.borderColor= [UIColor blueColor].CGColor;
    login.layer.borderWidth= 1.0f;
    [self.view addSubview:login];

}




- (void)textChanged:(id)sender
{

}




@end
