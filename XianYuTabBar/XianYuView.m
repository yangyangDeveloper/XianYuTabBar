//
//  XianYuView.m
//  XianYuTabBar
//
//  Created by Tech-zhangyangyang on 2017/4/24.
//  Copyright © 2017年 Tech-zhangyangyang. All rights reserved.
//

#import "XianYuView.h"

@implementation XianYuView

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    BOOL toNext = YES;
    for (UIView *view in self.subviews) {
        if (CGRectContainsPoint(view.bounds, point)) {
            toNext = NO;
            break;
        }
    }
    return !toNext;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
     if (view == nil) {
         for (UIView *subView in self.subviews) {
             CGPoint tp = [subView convertPoint:point fromView:self];
             if (CGRectContainsPoint(subView.bounds, tp)) {
                 view = subView;
             }
         }
     }
     return view;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {

}

@end
