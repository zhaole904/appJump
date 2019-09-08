//
//  ViewController.m
//  Block
//
//  Created by fuchun on 2017/5/25.
//  Copyright © 2017年 le. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+block.h"
//typedef void(^Myblock)(NSString *str);
@interface ViewController ()
//@property (nonatomic, copy) Myblock block;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (nonatomic, strong) UIButton *btn;
@end
//http://www.jianshu.com/p/d1608ff946a9
//http://www.cocoachina.com/ios/20161026/17855.html
@implementation ViewController
- (IBAction)ee:(id)sender {
    if (LeTarget == 1) {
        // 1.获取应用程序Block测试版的URL Scheme
        NSURL *appBUrl = [NSURL URLWithString:@"BlockNew://"];
        
        // 2.判断手机中是否安装了对应程序
        if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
            // 3. 打开应用程序Block测试版
            [[UIApplication sharedApplication] openURL:appBUrl options:@{@"name":@"Block"} completionHandler:^(BOOL success) {
                
            }];
            
//            [[UIApplication sharedApplication] openURL:appBUrl];
        } else {
            NSLog(@"Block测试版--没有安装");
        }
    } else {
        // 1.获取应用程序Block测试版的URL Scheme
        NSURL *appBUrl = [NSURL URLWithString:@"Block://"];
        
        // 2.判断手机中是否安装了对应程序
        if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
            // 3. 打开应用程序Block
            [[UIApplication sharedApplication] openURL:appBUrl options:@{@"name":@"Block测试版"} completionHandler:^(BOOL success) {
                
            }];
            
//            [[UIApplication sharedApplication] openURL:appBUrl];
        } else {
            NSLog(@"Block--没有安装");
        }

    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    if (LeTarget == 1) {
        NSLog(@"Block");
//        self.view.backgroundColor = [UIColor blueColor];
        self.button.frame = CGRectMake(0, 64, 100, 60);
        self.button.backgroundColor = [UIColor redColor];
        [self.button setTitle:@"Block" forState:UIControlStateNormal];
    } else {
        NSLog(@"Block测试版");
//        self.view.backgroundColor = [UIColor redColor];
        [self.button setTitle:@"Block测试版" forState:UIControlStateNormal];
    }
    
    NSString *version = [UIDevice currentDevice].systemVersion;
    NSLog(@"version=%@",version);
    
//    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 80)];
//    self.btn.backgroundColor = [UIColor blueColor];
//    [self.btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:self.btn];
}

- (void)btn{

}

//- (void)viewWillAppear:(BOOL)animated
//{
//    NSLog(@"dddd");
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
