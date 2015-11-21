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
