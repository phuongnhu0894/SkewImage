//
//  ViewController.m
//  SkewImage
//
//  Created by student on 11/16/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImage*    flag = [UIImage imageNamed:@"france.png"];
    CALayer*    myLayer = [CALayer layer];
    CGFloat nativeWidth = CGImageGetWidth(flag.CGImage);
    CGFloat nativeHeight = CGImageGetHeight(flag.CGImage);
    CGRect startFrame = CGRectMake((self.view.bounds.size.width - nativeWidth)/2, 100,nativeWidth, nativeHeight);
    myLayer.contents = (id)flag.CGImage;
    myLayer.frame = startFrame;
    [self.view.layer addSublayer:myLayer];
    myLayer.anchorPoint = CGPointMake(0.5, 0.5);
    CATransform3D t = CATransform3DIdentity;
    t.m34 = 1.0/ -500;
    t = CATransform3DRotate(t, 45.0f * M_PI / 180.0f, 0, 1, 0);
    myLayer.transform = t;

    

}



@end
