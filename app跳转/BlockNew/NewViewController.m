//
//  NewViewController.m
//  Block
//
//  Created by 乐哥 on 2017/5/26.
//  Copyright © 2017年 le. All rights reserved.
//

#import "NewViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController
- (IBAction)btn:(UIButton *)sender {
    
    NSString *str = [NSString stringWithFormat:@"Block://parameter"];
    NSURL *appBUrl = [NSURL URLWithString:str];
    
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        // 3. 打开应用程序Block测试版
        [[UIApplication sharedApplication] openURL:appBUrl options:@{@"name":@"BlockNew"} completionHandler:^(BOOL success) {
            
        }];
//        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
        NSLog(@"Block--没有安装");
    }
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
