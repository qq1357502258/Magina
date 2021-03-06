//
//  MAGRootViewController.m
//  Magina
//
//  Created by liujinze on 2020/10/26.
//

#import "MAGRootViewController.h"
#import "MAGFeedViewController.h"
#import "MAGRankViewController.h"
#import "MAGTestViewController.h"
#import "MAGUserViewController.h"

@interface MAGRootViewController ()

@end

@implementation MAGRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MAGFeedViewController *feedVC = [[MAGFeedViewController alloc] init];
    MAGRankViewController *rankVC = [[MAGRankViewController alloc] init];
    MAGTestViewController *testVC = [[MAGTestViewController alloc] init];
    MAGUserViewController *userVC = [[MAGUserViewController alloc] init];
    
    NSArray *VCArray = [NSArray arrayWithObjects:feedVC, rankVC, testVC, userVC, nil];
    self.viewControllers = VCArray;
    //backgroundcolor title
    [self configTabBarItem:feedVC.tabBarItem
                     title:@"首页"
                 titleSize:15.0
             titleFontName:@"HeiTi SC"
               normalImage:nil
             selectedImage:nil
          normalTitleColor:[UIColor grayColor]
        selectedTitleColor:[UIColor redColor]];
    
    [self configTabBarItem:rankVC.tabBarItem
                     title:@"排行"
                 titleSize:15.0
             titleFontName:@"HeiTi SC"
               normalImage:nil
             selectedImage:nil
          normalTitleColor:[UIColor grayColor]
        selectedTitleColor:[UIColor redColor]];
    
    [self configTabBarItem:testVC.tabBarItem
                     title:@"测试"
                 titleSize:15.0
             titleFontName:@"HeiTi SC"
               normalImage:nil
             selectedImage:nil
          normalTitleColor:[UIColor grayColor]
        selectedTitleColor:[UIColor redColor]];
    
    [self configTabBarItem:userVC.tabBarItem
                     title:@"个人"
                 titleSize:15.0
             titleFontName:@"HeiTi SC"
               normalImage:nil
             selectedImage:nil
          normalTitleColor:[UIColor grayColor]
        selectedTitleColor:[UIColor redColor]];
    
        
//    UINavigationController *homeNV = [[UINavigationController alloc] initWithRootViewController:homeVC];
//    UINavigationController *blogNV = [[UINavigationController alloc] initWithRootViewController:blogVC];
//        // 把子控制器添加到UITabBarController
//    self.viewControllers = @[homeNV, blogNV];
}


- (void)configTabBarItem:(UITabBarItem *)tabbarItem
                   title:(NSString *)title
               titleSize:(CGFloat)size
           titleFontName:(NSString *)fontName
             normalImage:(NSString *)unselectedImage
           selectedImage:(NSString *)selectedImage
        normalTitleColor:(UIColor *)unselectColor
      selectedTitleColor:(UIColor *)selectColor
{
    tabbarItem = [tabbarItem initWithTitle:title
                                     image:[[UIImage imageNamed:unselectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                             selectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:unselectColor,NSFontAttributeName:[UIFont fontWithName:fontName size:size]} forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:selectColor,NSFontAttributeName:[UIFont fontWithName:fontName size:size]} forState:UIControlStateSelected];
}

@end
