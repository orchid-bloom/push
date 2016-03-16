//
//  transitionAnimation.h
//  PushPop
//
//  Created by tianXin on 16/3/8.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, TXControllerTransitionType) {
    kControllerTransitionPush = 1 << 1,
    kControllerTransitionPop = 1 << 2
};




@interface transitionAnimation : NSObject <UIViewControllerAnimatedTransitioning>



+ (instancetype)transitionWithType:(TXControllerTransitionType)transitionType
                          duration:(NSTimeInterval)duration;

@end
