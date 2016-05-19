//
//  QYSecondViewController.m
//  01-UINavigationControllerDemo(SB)
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYSecondViewController.h"

@interface QYSecondViewController ()

@end

@implementation QYSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)cancel:(UIBarButtonItem *)sender {
    //出栈
    [self.navigationController popViewControllerAnimated:YES];

}

- (IBAction)search:(UIBarButtonItem *)sender {
    NSLog(@"%s",__func__);
}

- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        NSLog(@"所有通话");
    }else if (sender.selectedSegmentIndex == 1){
        NSLog(@"未接来电");
    }
    
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
