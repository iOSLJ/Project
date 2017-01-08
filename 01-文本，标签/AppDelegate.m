//
//  AppDelegate.m
//  01-文本，标签
//
//  Created by lanou on 15/12/21.
//  Copyright (c) 2015年 李俊. All rights reserved.
//

#import "AppDelegate.h"
#import "UIView+Frame.h"
#define KScreenWidth [[UIScreen mainScreen]bounds].size.width
#define KScreenHeight [[UIScreen mainScreen]bounds].size.height
#define KMyColor    [UIColor colorWithRed: 33 / 255.0 green:66 / 255.0 blue:99 / 255.0 alpha:1]


@interface AppDelegate ()

@end

@implementation AppDelegate
- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
   
     
    // 设置坐标
    
//    self.window = [[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]]autorelease];    // 设置颜色
//   //  self.window.backgroundColor = [UIColor greenColor];
//    // 激活window窗口（必须写）
//    [self.window makeKeyAndVisible];
//    NSLog(@"%f",KScreenWidth );
//    NSLog(@"%f", KScreenHeight );
    /*
     iPhone 4.4s 320 * 470
     iPhone 5 5s 320 * 568
     iPhone 6    375 * 667
     iPhone 6plus 414 * 736
     */
    
    
    
    
    
    // Window 一个应用程序当中通常情况下 只会有一个Window
    // 我们所有的展示都是基于这个Window
    // UIWindow 继承于 UIView 我们所能够用肉眼看到的所有控件 都是UIView 自身 或者是他的子类
    /******* 核心步骤 *******/
    // UIView
    // 初始化 给定frame坐标
    /*
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    // 设置颜色
    
    aView.backgroundColor = [UIColor redColor];
    // 添加到界面上
    // 添加子视图 相当于 添加到一个数组当中 我们可以利用这个数组取出子视图
    [self.window addSubview:aView];
     [aView release];
  // 一个视图 只能够有一个父视图
    // 而父视图 可以有很多子视图
    UIView *bView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    bView.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:bView];
    [bView release];
    [aView addSubview:bView];
    UIView *tempView = self.window.subviews[0];
//    tempView.backgroundColor = [UIColor grayColor];
     */
    
    
    
    
    // RGB 是根据三种颜色 决定最后颜色
    // RGB 值 是 0 - 255 之间
    // 在实际开发中 RGB的值 都是由设计 给我们提供的 提供一个准确的值 或者一个 颜色 如果是颜色 我
    // 们可以用  测色计 来自己查看 RGB 的值
    /*
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    CGFloat red = arc4random() / (255 - 1 + 1) + 1;
    CGFloat green = arc4random() / (255 - 1 + 1) + 1;
    CGFloat blue = arc4random() / (255 - 1 + 1) + 1;

    aView.backgroundColor = [UIColor  colorWithRed:red / 255.0 green:green /255.0 blue:blue / 255.0 alpha:1];
    [self.window addSubview:aView];
    [aView release];

     */
    
    
    /*
    UIView *aView = [UIView createViewWithFrame:CGRectMake(100, 100, 100, 100) color:[UIColor redColor]];
    [self.window addSubview:aView];
     */
    
    
    
    
    
   
    // 宽和高 一致
    // 赋值 一半的值
//    [aView.layer setCornerRadius:10];
//    [self.window addSubview:aView];
    
//    
//    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    aView.backgroundColor = [UIColor blueColor];
//    [self.window addSubview:aView];
//    //[aView release];
//    NSLog(@"x ==== %f",aView.frame.origin.x);
//    NSLog(@"y ==== %f",aView.frame.origin.y);
//    NSLog(@"width === %f",aView.frame.size.width);
//    NSLog(@"heigth === %f",aView.frame.size.height);
    // 中心点的改变 同样也会影响到 frame
    //
   //  aView.center = CGPointMake(250, 250);
//    UIView *bView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 10, 10)];
//    bView.backgroundColor = [UIColor blackColor];
//    [aView addSubview:bView];
//    [bView release];
//    
//    // 父视图的bounds改变 不会改变自身界面上的位置 但是会改变子视图的位置
//    // 因为俯视图的改变 会影响到之前的（0，0）点 而子视图的位置 都是根据 俯视图的（0，0）点来决定的
//    // bounds 的改变 不会影响到自身的frame 和 center
//    // 而 center 和 frame 同样也不会影响到 自身的bounds
//    // bounds 是参考自身为坐标系 frame 和 center 是参考父视图为坐标系的
//
//    
//    aView.bounds = CGRectMake(30, 30, 100, 100);
    // 中心点是相对于父视图来说的
    // 中心点  x = 视图自身的x + 视图自身宽 / 2;
    // 中心点  y = 视图自身的y + 视图自身高 / 2;
    
//    NSLog(@"%@",NSStringFromCGRect(aView.frame));
//    NSLog(@"%@", NSStringFromCGPoint(aView.center));
//    
    
    
 
    
    
    
    //  **************循环创建**********************
    // 循环创建视图的时候 当我们想找到某一个视图的时候 我们会利用装载子视图的数组 来寻找一个特定的子视图

#define KLeftwidth 50  // 左视图的宽度
#define KRightWidth 100 // 右视图的宽度
#define KHeight 30// 高度(第一行与第二行之间的高度)
#define KXspace 30 // 一行中两者视图的之间的x之间的距离
#define kbigView  (KLeftwidth + KRightWidth + KXspace) // 大视图之间的宽度
#define KHe 30 // 该矩形的高度
#define KYSpace (KHe + 30) // 行间距 = 视图自身的高度 + 想要的间距
    
    for (int i = 0; i < 3; i++) {
        
        UIView *bigView = [[UIView alloc]initWithFrame:CGRectMake((KScreenWidth - kbigView) / 2, 100 + KYSpace * i,kbigView,KHe)];
        bigView.tag = 100 + i;
        bigView.backgroundColor = [UIColor redColor];
        [self.window addSubview:bigView];
        [bigView release];
        
        
        UIView *Leftwidth = [[UIView alloc]initWithFrame:CGRectMake(0, 0, KLeftwidth, KHe)];
        Leftwidth.backgroundColor = [UIColor greenColor];
        [bigView addSubview:Leftwidth];
        [Leftwidth release];
        
        
        UIView *RightWidth = [[UIView alloc]initWithFrame:CGRectMake(KLeftwidth + KXspace, 0, KRightWidth, KHe)];
        RightWidth.backgroundColor = [UIColor blackColor];
        [bigView addSubview:RightWidth];
        [RightWidth release];
        
    }
   
    for (UIView *view in self.window.subviews) {
        if (view.tag == 101) {
            [view.subviews[1] setBackgroundColor:[UIColor redColor]];
            break;
        }
    }
    
//    UIView *tempView = [self.window viewWithTag:101];
//    UIView *tempView2 = tempView.subviews[1];
//    tempView2.backgroundColor = [UIColor grayColor];
    /*
    UIView *tempView = self.window.subviews[1];
    UIView *tempView2 = tempView.subviews[1];
    tempView2.backgroundColor = [UIColor orangeColor];
     */
    

    // tag值相当于 一个视图的标识 我们可以利用 tag的值 来寻找子视图
    // window 的tag 值默认是0 我们自己视图设置tag的时候 避开0u
    
// 例如
//    UIView *tempView = [self.window.viewwithTag:101];
//    UIView *tempView2 = tempView.subviews[1];
//    
    
    
//    for (UIView *tempView in self.window.subviews)
//    {
//        if (tempView.tag == 101)
//        {
//            [tempView.subviews[1]setBackgroundColor:[UIColor redColor]];
//            break;
//        }
//    }
    
    /*
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    
    // 透明度是0 - 1 0是完全透明 1没有透明
    // 如果父视图的透明度发生变化 那么子视图自身 以及子视图的子视图 都会发生改变
    //aView.alpha = 0.3;
    // 返回值是BOOL类型
    // 隐藏默认设置是NO 不隐藏
    // 如果父视图隐藏掉 子视图自身 以及 子视图的子视图都会随着改变
    aView.hidden = NO;
    aView.backgroundColor = [UIColor redColor];
   
    [self.window addSubview:aView];
    UIView *bView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 100, 100)];
    bView.backgroundColor = [UIColor blueColor];
    [self.window addSubview:bView];
    UIView *cView = [[UIView alloc]initWithFrame:CGRectMake(140, 140, 80, 80)];
    cView.backgroundColor = [UIColor greenColor];
    [self.window addSubview:cView];
    
    
//    // UIView 的常用API方法
//    // 把某个视图 从父视图上移除掉
//    [bView removeFromSuperview];
//    UIView *tempView = cView.superview;
//    tempView.backgroundColor = [UIColor yellowColor];
    
    
    // 把某个视图放到最前面 相当于下标是 最后一个 最后添加的
   // [self.window bringSubviewToFront:aView];
    
    // 把某个视图放到 最后面 相当于 下标是第0个 最开始添加的
    // [self.window sendSubviewToBack:cView];
    
    // 把某个视图插入到某个视图的 上面
    // [self.window insertSubview:bView aboveSubview:cView];
    
    // 把某个视图插入到某个视图的下面
    // [self.window insertSubview:bView belowSubview:cView];
    
    
    //交换两个下标处的索引值
    [self.window exchangeSubviewAtIndex:1 withSubviewAtIndex:2];
     */
    
    
    
    /*
    //UILabel 标签视图 主要用于 呈现文本信息
    // UILabel 是UIView 子类 子类是为了扩展父类中没有的功能
    UILabel *label  = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 300, 200.)];
    label.backgroundColor = [UIColor blueColor];
    // 设置文本信息
    label.text = @"用户名不能吃多久能刺激的";
    // 设置文本大小
//    label.font = [UIFont systemFontOfSize:43];
//    label.font = [UIFont fontWithName:@"Helvetica-Bold" size:43];
    label.textColor = [UIColor greenColor];
    // .[self.window addSubview:label];
    
    // 居中
    label.textAlignment =
    NSTextAlignmentCenter;
     [self.window addSubview:label];
   
    
    
    // 文本阴影颜色
    label.shadowColor = [UIColor orangeColor];
     [label release];
    
    // 换行 需要和label自身的高度 和 高度 结合使用
    // 宽度一定 那么高度 必须能够容乃label 的文本
    // 自动换行 没有行数的限制 但是 仍然得和 label自身的宽度，高度结合使用
    label.numberOfLines = 0;
     */
    
    
   
    
    
    
    
    

    
    

  
    
    
    
    
    
 
     return YES;
}
//- (UIView *)createViewWithFrame:(CGRect)frame color:(UIColor *)color
//{
//    UIView *myView = [[UIView alloc]initWithFrame:frame];
//    myView.backgroundColor = color;
//    return [myView autorelease];
// }

- (void)applicationWillResignActive:(UIApplication *)application {
    // 相当于代理方法
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
