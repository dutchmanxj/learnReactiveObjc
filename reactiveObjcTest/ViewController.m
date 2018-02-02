//
//  ViewController.m
//  reactiveObjcTest
//
//  Created by xujian on 2018/1/29.
//  Copyright © 2018年 xujian. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveObjc.h"
#import "mainView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputFielde;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *bgview = [[mainView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
    [self.view addSubview:bgview];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
