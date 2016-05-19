//
//  ViewController.m
//  01-UINavigationControllerDemo(SB)
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)menu:(UIBarButtonItem *)sender {
    NSLog(@"%s",__func__);
}

- (IBAction)takePhoto:(UIBarButtonItem *)sender {
    NSLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
