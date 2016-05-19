//
//  ViewController3.m
//  02-UINavigationControllerDemo(code)
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];

    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    leftBarBtnItem.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem= leftBarBtnItem;
    // Do any additional setup after loading the view.
}

-(void)back{
    //出栈当前的视图控制器
    //[self.navigationController popViewControllerAnimated:YES];
    //pop指定的视图控制器
    //UIViewController *toVC = self.navigationController.viewControllers[0];
    //[self.navigationController popToViewController:toVC animated:YES];
    
    //popdao根视图控制器
    [self.navigationController popToRootViewControllerAnimated:YES];
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
