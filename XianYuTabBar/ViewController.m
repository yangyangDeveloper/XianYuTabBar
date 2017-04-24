//
//  ViewController.m
//  XianYuTabBar
//
//  Created by Tech-zhangyangyang on 2017/4/21.
//  Copyright © 2017年 Tech-zhangyangyang. All rights reserved.
//

#import "ViewController.h"
#import "XianYuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    XianYuView *tabBar = [[XianYuView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 50, self.view.frame.size.width, 50)];
    tabBar.backgroundColor = [UIColor greenColor];
    tabBar.userInteractionEnabled = YES;
    [self.view addSubview:tabBar];
 
    for (int i = 0 ; i < 5; i++) {
        UIView *item = [[UIView alloc] initWithFrame:CGRectMake(20+i*(50+(self.view.bounds.size.width-250-40)/4), 0, 50, 50)];
        CGFloat hue = (arc4random() %256/256.0);
        CGFloat saturation = (arc4random() %128/256.0) +0.5;
        CGFloat brightness = (arc4random() %128/256.0) +0.5;
        UIColor*color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
        item.userInteractionEnabled = YES;
        item.backgroundColor = color;
        UITapGestureRecognizer *single = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clicked:)];
        item.tag = 100 + i;
        [item addGestureRecognizer:single];
        if (i == 2) {
           item.frame = CGRectMake(20+i*(50+(self.view.bounds.size.width-250-40)/4), -50, 50, 100);
        }
        [tabBar addSubview:item];
    }
}

- (void)clicked:(UITapGestureRecognizer *)sender {
    NSInteger index = sender.view.tag - 100;
    NSLog(@"clicked %ld view",index);
}

@end
