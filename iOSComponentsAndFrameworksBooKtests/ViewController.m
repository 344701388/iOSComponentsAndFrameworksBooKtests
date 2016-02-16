//
//  ViewController.m
//  iOSComponentsAndFrameworksBooKtests
//
//  Created by User on 16/2/14.
//  Copyright © 2016年 User. All rights reserved.
//

#import "ViewController.h"
#import "UIKitDynamicsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
   
   UITableView *tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
   [self.view addSubview:tableview];
   
   tableview.dataSource=self;
   tableview.delegate=self;
   
   [tableview reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

   return 10;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{


   return 60;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

   NSString *identifier = @"content";
   
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
   
   if (!cell) {
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
      
      UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 0, 320, 60)];
      
      label.tag=100;
      [cell addSubview:label];
      label.textColor=[UIColor blackColor];
      
         }
   
   UILabel *label=[cell viewWithTag:100];
   if (indexPath.row==0) {
      label.text=@"UIKit Dynamics";

   }else{
      label.text=@"211312";

   }
   
   
   return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

   if (indexPath.row==0) {
      UIKitDynamicsViewController *vc=[[UIKitDynamicsViewController alloc]init];
      [self.navigationController pushViewController:vc animated:YES];
      
      
   }





}





- (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}

@end
