//
//  SLRedViewController.m
//  D36-UI-UINavigationController导航
//
//  Created by 孙磊 on 16/4/7.
//  Copyright © 2016年 sunlei. All rights reserved.
//

#import "SLRedViewController.h"
#import "SLBlueViewController.h"

@interface SLRedViewController ()
- (IBAction)blueClick:(id)sender;

@end

@implementation SLRedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"红色视图";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)blueClick:(id)sender {
    //实例化蓝色的View
    SLBlueViewController *go2BlueView=[[SLBlueViewController alloc]init];
    
    [self.navigationController pushViewController:go2BlueView animated:YES];
    
}
@end
