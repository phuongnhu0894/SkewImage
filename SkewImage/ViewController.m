//
//  ViewController.m
//  SkewImage
//
//  Created by student on 11/16/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider addTarget:self action:@selector(changeAngle) forControlEvents:UIControlEventValueChanged];
    
//    UIImage* flag = [UIImage imageNamed:@"france.png"];
//    CALayer* myLayer = [CALayer layer];
//    CGFloat nativeWidth = CGImageGetWidth(flag.CGImage);
//    CGFloat nativeHeight = CGImageGetHeight(flag.CGImage);
//    CGRect startFrame = CGRectMake((self.view.bounds.size.width - nativeWidth)/2, 100,nativeWidth, nativeHeight);
//    myLayer.contents = (id)flag.CGImage;
//    myLayer.frame = startFrame;
//    myLayer.anchorPoint = CGPointMake(0.5, 0.5);
//    [self.view.layer addSublayer:myLayer];
}
//- (IBAction)changeAngle:(id)sender {
//    CGFloat angle = 180.0f * ((UISlider *)sender).value * M_PI / 180.0f;
//    CATransform3D t = CATransform3DIdentity;
//    t.m34 = 1.0/ -500;
//    t = CATransform3DRotate(t, angle, 0, 1, 0);
//    
//    CALayer *myLayer =  self.imageView.layer;
//    myLayer.transform = t;
//}

- (void)changeAngle{
    CGFloat angle = 180.0f * self.slider.value * M_PI / 180.0f;
        CATransform3D t = CATransform3DIdentity;
        t.m34 = 1.0/ -500;
        t = CATransform3DRotate(t, angle, 0, 1, 0);
    
        CALayer *myLayer =  self.imageView.layer;
        myLayer.transform = t;

}


@end
