//
//  DetailViewController.m
//  PushPop
//
//  Created by tianXin on 16/3/8.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "DetailViewController.h"
#import "transitionAnimation.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"学习转场";
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:self.image];
    imageView.frame = CGRectMake(20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40);;
    [self.view addSubview:imageView];
    self.imgView = imageView;
    
}

#pragma mark - UINavigationControllerDelegate
- (id<UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController {
    return nil;
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    if (operation == UINavigationControllerOperationPush) {
        return [transitionAnimation transitionWithType:kControllerTransitionPush duration:0.75];
    } else {
        return [transitionAnimation transitionWithType:kControllerTransitionPop duration:0.75];
    }
}
@end
