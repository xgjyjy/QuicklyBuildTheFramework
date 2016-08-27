//
//  BaseNavigationController.h
//  QuicklyBuildTheFramework
//
//  Created by XiaoGe on 16/8/27.
//  Copyright © 2016年 XiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseNavigationController : UINavigationController
//导航栏背景色
#define COLOR_NAVBAR_BG [UIColor colorWithRed:20.f/255.f green:182.f/255.f blue:255.f/255.f alpha:1.f];
//导航栏文字颜色
#define COLOR_BAR_TITLE [UIColor whiteColor]
//导航栏文字大小
#define FONT_BAR_TITIE 20.f


//导航栏背景色
@property(nonatomic,strong)UIColor *backGroundColor;

//导航栏文字颜色
@property(nonatomic,strong)UIColor *titleColor;

//导航栏文字大小
@property(nonatomic,assign)float titleSize;
@end
