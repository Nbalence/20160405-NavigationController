//
//  ViewController.m
//  02-UINavigationControllerDemo(code)
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)nextPageVC{
    NSLog(@"%s",__func__);
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //导航栏高度 44  工具栏 44 状态栏 20 用户提示prompt 30
    //设置导航栏
    [self setNavigationbar];
    //设置工具栏
    [self setToolBar];
    
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:nextBtn];
    nextBtn.frame = CGRectMake(100, 164, 80, 30);
    [nextBtn setTitle:@"下页" forState:UIControlStateNormal];
    nextBtn.backgroundColor = [UIColor greenColor];
    [nextBtn addTarget:self action:@selector(nextPageVC) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}

//自定义工具栏
-(void)setToolBar {
    //显示工具栏
    self.navigationController.toolbarHidden = NO;
    //创建工具栏上的内容
    UIBarButtonItem *barBtnItem1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:nil];
    
    UIBarButtonItem *barBtnItem2 = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:nil];
    
    UIBarButtonItem *barBtnItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:nil];
    
    //创建间距
    //固定的间距（需要设置宽度）
    UIBarButtonItem *fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    fixedSpace.width = 20;
    
    //灵活的间距
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    
    //设置toolbar上内容
    NSArray *items = @[fixedSpace,barBtnItem1,flexibleSpace,barBtnItem2,flexibleSpace,barBtnItem3,fixedSpace];
    
    [self setToolbarItems:items animated:YES];
    
    [self.navigationController.toolbar setBackgroundImage:[UIImage imageNamed:@"navBackground"] forToolbarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
}


//自定义导航栏
-(void)setNavigationbar {
    //通过navigationItem来设置导航栏上的内容（leftBarButtonItem、 rightBarButtonItem、title/titleView）
    //创建UIbarButtonItem
#if 0
    //1、系统类型的UIbarButtonItem
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(leftBarBtnItemClick:)];
    
    //2、初始化一个带图片的UIBarButtonItem对象，包括iPhone的竖屏和横屏
    UIImage *image = [[UIImage imageNamed:@"navigationbar_pop_os7"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *landscapeImage = [[UIImage imageNamed:@"navigationbar_compose_os7"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc] initWithImage:image landscapeImagePhone:landscapeImage style:UIBarButtonItemStylePlain target:self action:@selector(leftBarBtnItemClick:)];
    
    
#else
    //3、初始化一个带标题的UIBarButtonItem对象
    UIBarButtonItem *leftBarBtnItem1 = [[UIBarButtonItem alloc] initWithTitle:@"菜单" style:UIBarButtonItemStyleDone target:self action:@selector(leftBarBtnItemClick:)];
    //当前的barBtnItem的tintColor只影响自己的着色
    //leftBarBtnItem1.tintColor = [UIColor blackColor];
    
    //4、初始化一个自定义视图的UIBarButtonItem对象
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"settings"]  forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 60, 40);
    //添加事件
    [btn addTarget:self action:@selector(leftButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBarBtnItem2 = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
#endif
    self.navigationItem.leftBarButtonItems = @[leftBarBtnItem1,leftBarBtnItem2];
    
    UIImage *rightBarBtnImage = [[UIImage imageNamed:@"navigationbar_compose_os7"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightBarBtnItem = [[UIBarButtonItem alloc] initWithImage:rightBarBtnImage style:UIBarButtonItemStylePlain target:self action:@selector(rightBarBtnItemClick:)];
    self.navigationItem.rightBarButtonItem = rightBarBtnItem;
    
    //设置中间的titleView（UIView）
#if 0
    UIImageView *titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"catdog"]];
    titleView.frame = CGRectMake(0, 0, 44, 44);
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
#else
    UISwitch *sw = [[UISwitch alloc] init];
#endif
    self.navigationItem.titleView = sw;
    
    //barTintColor
    self.navigationController.navigationBar.barTintColor = [UIColor lightGrayColor];
    
    //prompt
    //self.navigationItem.prompt = @"正在加载...";
    
    //translucent半透明（如果为yes，坐标原点在屏幕左上角，no 导航栏的左下角）
    self.navigationController.navigationBar.translucent = YES;
    
    //tintColor
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    //隐藏bars
    self.navigationController.hidesBarsOnSwipe = YES;
    
    //设置导航栏的背景图片
    //把背景图片拉伸
    UIImage *bgImage = [[UIImage imageNamed:@"bgimgae"] resizableImageWithCapInsets:UIEdgeInsetsMake(28, 3, 28, 4) resizingMode:UIImageResizingModeStretch];
    [self.navigationController.navigationBar setBackgroundImage:bgImage forBarMetrics:UIBarMetricsDefault];
}

-(void)leftButtonClick:(UIButton *)button {
    NSLog(@"%s",__func__);
}

-(void)leftBarBtnItemClick:(UIBarButtonItem *)barItem {
    NSLog(@"%s",__func__);
}

-(void)rightBarBtnItemClick:(UIBarButtonItem *)barItem {
    NSLog(@"%s",__func__);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
