//
//  BaseTabBarController.m
//  QuicklyBuildTheFramework
//
//  Created by XiaoGe on 16/8/27.
//  Copyright © 2016年 XiaoGe. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()<UITabBarControllerDelegate>

/** 保存了tabBar上的图标View */
@property (nonatomic, strong) NSArray<UIImageView *> *imageViews;

/** 上一次选中的imageView的layer */
@property (nonatomic, strong) CALayer *oldLayer;
@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    
    for (int i = 0; i < [VcControllers count]; i++){
        [self setupChiledViewController:VcControllers[i]
                                  title:TitleArr[i]
                              imageName:NormalArr[i]
                      selectedImagaName:SelectArr[i]
                               navClass:ClassNames[i]];
//        [vc.tabBarItem initWithTitle:self.titleArr[i] image:[UIImage imageNamed:self.normalArr[i]] selectedImage:[UIImage imageNamed:self.selectArr[i]]];
    }
//    self.tabBar.backgroundColor = [UIColor whiteColor];
//    self.tabBar.backgroundColor = TabBarBGColor;
//    self.tabBar.tintColor = TitleColor;
//    self.tabBar.selectedImageTintColor = TitleColor;
//    self.tabBar.backgroundImage = [UIImage imageWithColor:TabBarBGColor andSize:self.tabBar.bounds.size];
}



#pragma mark - 初始化子控件

- (void)setupChiledViewController:(UIViewController *)viewCtrl title:(NSString *)title imageName:(NSString *)imageName selectedImagaName:(NSString *)selectedImageName navClass:(Class)navClass{
    
    viewCtrl.title = title;
    viewCtrl.tabBarController.title = title;
    viewCtrl.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewCtrl.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UINavigationController *navCtrl = [[navClass alloc] initWithRootViewController:viewCtrl];
    [self addChildViewController:navCtrl];
}


/***如果要给tabBarItem添加动画请解开注释掉的代码,即可.***/
/**
 *  获得tabBar的上的imageView
 */
//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    NSMutableArray *imageViews  = [NSMutableArray new];
//    //    NSInteger count = 0;
//    for (id obj in self.tabBar.subviews) {
//        if ([obj isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
//            for (id subView in [obj subviews]) {
//                if ([subView isKindOfClass:[UIImageView class]]) {
//                    [imageViews addObject:subView];
//                }
//            }
//        }
//    }
//    self.imageViews = imageViews.copy;
//}

#pragma mark - UITabBarControllerDelegate

//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
//    
//    NSInteger index = [self.childViewControllers indexOfObject:viewController];
//    UIImageView *imageView = self.imageViews[index];
//    
//    CALayer *layer = imageView.layer;
//    
//    if ([layer animationForKey:@"pressAnimation"]) {
//        return;
//    }
//    
//    if (_oldLayer) {
//        [_oldLayer removeAllAnimations];
//        _oldLayer = nil;
//    }
//    
//    // 添加动画对象
//    // button点击动画
//    CAKeyframeAnimation *btnAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
//    btnAnimation.values = @[@(1.0),@(0.7),@(0.5),@(0.3),@(0.5),@(0.7),@(1.0), @(1.2), @(1.4), @(1.2), @(1.0)];
//    btnAnimation.keyTimes = @[@(0.0),@(0.1),@(0.2),@(0.3),@(0.4),@(0.5),@(0.6),@(0.7),@(0.8),@(0.9),@(1.0)];
//    btnAnimation.calculationMode = kCAAnimationLinear;
//    btnAnimation.duration = 0.3;
//    
//    [layer addAnimation:btnAnimation forKey:@"pressAnimation"];
//    _oldLayer = layer;
//}



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
