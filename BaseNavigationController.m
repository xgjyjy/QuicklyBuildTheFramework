//
//  BaseNavigationController.m
//  QuicklyBuildTheFramework
//
//  Created by XiaoGe on 16/8/27.
//  Copyright © 2016年 XiaoGe. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.backGroundColor = COLOR_NAVBAR_BG;
    self.titleColor = COLOR_BAR_TITLE;
    self.titleSize = FONT_BAR_TITIE;
    [self customNavigationBar];
}

#pragma mark --自定义导航栏
-(void)customNavigationBar
{
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor],
                                               NSFontAttributeName:[UIFont boldSystemFontOfSize:self.titleSize]
                                               };
    self.navigationBar.barTintColor = self.backGroundColor;
    
    self.navigationBar.tintColor = self.titleColor;
    
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
