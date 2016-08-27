//
//  BaseTabBarController.h
//  QuicklyBuildTheFramework
//
//  Created by XiaoGe on 16/8/27.
//  Copyright © 2016年 XiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseNavigationController.h"
@interface BaseTabBarController : UITabBarController
//tabBar背景颜色
#define TabBarBGColor [UIColor colorWithRed:241.f/255.f green:0.f/255.f blue:0.f/255.f alpha:1.f]

//tabBar文字颜色
#define TitleColor [UIColor colorWithRed:33.f/255.f green:0.f/255.f blue:107.f/255.f alpha:1.f]

//标题数组
#define TitleArr @[@"1",@"2",@"3",@"4"]

//图片数组 正常  图片字符串
#define NormalArr @[@"homes",@"xiangji",@"youxi",@"zhibo"]

//图片数组 选中
#define SelectArr @[@"homes_s",@"xiangji_s",@"youxi_s",@"zhibo_s"]

//通过类名获取UINavigationController或者子类
#define ClassNames @[[BaseNavigationController class],[BaseNavigationController class],[UINavigationController class],[UINavigationController class]]

//通过init方法 获取vc
#define ViewVC(name) [[name alloc]init]

//获取storyBoard  入口VC
#define boardVc(name) ([[UIStoryboard storyboardWithName:name bundle:nil] instantiateInitialViewController])

//viewControllers数组  可为storyBoard名称字符串
//#define VcControllers @[boardVc(@"Main"),boardVc(@"Main"),boardVc(@"Main"),boardVc(@"Main")]

#define VcControllers @[ViewVC(UITableViewController),ViewVC(UIViewController),ViewVC(UIViewController),ViewVC(UIViewController)]

@end
