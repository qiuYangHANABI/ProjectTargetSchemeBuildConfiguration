//
//  ViewController.m
//  ProjectTargetSchemeBuildConfiguration
//
//  Created by 黃秋陽 on 2018/9/10.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/**
 workspace: 一个workspace可以创建多个project。
 
 project: 一个project可以配置多个target，设置多个build configuration，并以不同的scheme执行。
 
 targets: 在project -> TARGETS 下创建(可以复制已有的target)，不同的target可以配置自己的General、Capabilities、Resource Tags、Info、Build Settings、Build Phases、Build Rules、plist文件，在build settings -> preprocessor macros 可以为target配置各自的宏定义，以区分不用的target。
 
 build configurations: 在project -> info -> configurations下添加，可以在target的build settings 下的 preprocessor macros配置不同的宏定义加以区分。
 
 scheme: 可以配置build、run、test、profile、analyze、archive，其中每项都可以配置不同的build configuration，部分项可以配置不同的target，属于对target和build configuration的一种整合，配置好scheme后，开发时不同情景的切换只需要切换scheme
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (TARGET == 0) {
        NSLog(@"target is ProjectTargetSchemeBuildConfiguration");
    }else if (TARGET == 1){
        NSLog(@"target is TargetA");
    }
    
    if (ENVIRONMENT == 0) {
        NSLog(@"environment is Debug");
    }else if (ENVIRONMENT == 1){
        NSLog(@"environment is Release");
    }else if (ENVIRONMENT == 2){
        NSLog(@"environment is Target-Debug");
    }else if (ENVIRONMENT == 3){
        NSLog(@"environment is Target-Release");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
