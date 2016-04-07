//
//  SLGreenViewController.m
//  D36-UI-UINavigationController导航
//
//  Created by 孙磊 on 16/4/7.
//  Copyright © 2016年 sunlei. All rights reserved.
//

#import "SLGreenViewController.h"
#import "SLBlueViewController.h"

@interface SLGreenViewController ()

@end

@implementation SLGreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"绿色的视图";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backBlueClick:(id)sender {
    //SLBlueViewController *blueView=[[SLBlueViewController alloc]init];
   // [self.navigationController popToViewController:blueView animated:YES]; 错误
    UIViewController *vc=self.navigationController.viewControllers[1];
    [self.navigationController popToViewController:vc animated:YES];
    
}
- (IBAction)bbackRedClick:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}



@end
