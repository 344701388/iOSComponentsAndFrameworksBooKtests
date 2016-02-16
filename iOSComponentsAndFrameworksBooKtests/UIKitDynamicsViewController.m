//
//  UIKitDynamicsViewController.m
//  iOSComponentsAndFrameworksBooKtests
//
//  Created by User on 16/2/14.
//  Copyright © 2016年 User. All rights reserved.
//

#import "UIKitDynamicsViewController.h"


@interface UIKitDynamicsViewController ()

@end

@implementation UIKitDynamicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   self.title=@"UIKitDynamics";
   self.view.backgroundColor=[UIColor whiteColor];
   
   UIImageView *iv=[[UIImageView alloc]initWithFrame:CGRectMake(100,200, 80, 80)];
   iv.image=[UIImage imageNamed:@"icon"];
   [self.view addSubview:iv];
   
//   UIDynamicAnimator *animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view];
//   
//   //重力
//   UIGravityBehavior *gravBehv=[[UIGravityBehavior alloc]initWithItems:@[iv]];
//   
//   gravBehv.magnitude=100;
//   gravBehv.gravityDirection=CGVectorMake(0, 1);
//   [animator addBehavior:gravBehv];
   
   int a[5]={1,2,3,4,5};
   
   int *ptr=(int *)(&a+1);
   
   printf("%d,%d",*(a),*(ptr));
   
   
   
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
