//
//  ViewController2.m
//  02-UINavigationControllerDemo(code)
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"
@interface ViewController2 ()

@end

@implementation ViewController2

-(void)nextPageVC{
    NSLog(@"%s",__func__);
    ViewController3 *vc3 = [[ViewController3 alloc] init];
#if 0
    [self.navigationController pushViewController:vc3 animated:YES];
#else
    [self.navigationController showViewController:vc3 sender:nil];
    //[self.navigationController presentViewController:vc3 animated:YES completion:nil];
#endif
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:nextBtn];
    nextBtn.frame = CGRectMake(100, 164, 80, 30);
    [nextBtn setTitle:@"下页" forState:UIControlStateNormal];
    nextBtn.backgroundColor = [UIColor greenColor];
    [nextBtn addTarget:self action:@selector(nextPageVC) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    leftBarBtnItem.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem= leftBarBtnItem;
    // Do any additional setup after loading the view.
}


-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
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
