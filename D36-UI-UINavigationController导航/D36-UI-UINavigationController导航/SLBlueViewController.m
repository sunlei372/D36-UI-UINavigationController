//
//  SLBlueViewController.m
//  D36-UI-UINavigationController导航
//
//  Created by 孙磊 on 16/4/7.
//  Copyright © 2016年 sunlei. All rights reserved.
//

#import "SLBlueViewController.h"
#import "SLGreenViewController.h"

@interface SLBlueViewController ()
- (IBAction)backRedClick:(id)sender;
- (IBAction)go2Green:(id)sender;

@end

@implementation SLBlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"蓝色视图";
    UIBarButtonItem *barItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refreshClick)];
    self.navigationItem.rightBarButtonItem=barItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- 刷新处理事件
-(void)refreshClick
{
    NSLog(@"点击刷新");
}

- (IBAction)backRedClick:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)go2Green:(id)sender {
    SLGreenViewController *greenView=[[SLGreenViewController alloc]init];
    
    [self.navigationController pushViewController:greenView animated:YES];
}
@end
