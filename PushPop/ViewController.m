//
//  ViewController.m
//  PushPop
//
//  Created by tianXin on 16/3/8.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.img1 = [[UIImageView alloc] initWithFrame:CGRectMake(40, 80, 200, 200)];
    self.img1.image = [UIImage imageNamed:@"IMG_0346.PNG"];
    self.img1.userInteractionEnabled = YES;
  
    
    
    self.img2 = [[UIImageView alloc] initWithFrame:CGRectMake(40, 300, 200, 200)];
    self.img2.image = [UIImage imageNamed:@"IMG_0347.PNG"];
    self.img2.userInteractionEnabled = YES;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    [self.img1 addGestureRecognizer:tap];
    
    tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    [self.img2 addGestureRecognizer:tap];

    [self.view addSubview:self.img1];
    [self.view addSubview:self.img2];

}

- (void)onTap:(UITapGestureRecognizer *)sender {
    DetailViewController *vc = [[DetailViewController alloc] init];
    vc.image = [(UIImageView *)sender.view image];
    
    if (sender.view == self.img1) {
        self.isImg1 = YES;
    } else {
        self.isImg1 = NO;
    }
    self.navigationController.delegate = vc;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
