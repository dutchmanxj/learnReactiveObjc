//
//  mainView.m
//  reactiveObjcTest
//
//  Created by xujian on 2018/1/29.
//  Copyright © 2018年 xujian. All rights reserved.
//

#import "mainView.h"
#import "mainViewModel.h"

@interface mainView ()
@property (copy, nonatomic) UITextField *textField;
@property (strong, nonatomic) mainViewModel *viewModel;
@end

@implementation mainView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews {
    self.viewModel = [[mainViewModel alloc] init];
    UITextField * field = [[UITextField alloc] initWithFrame:CGRectMake(15, 50, 250, 33)];
    [field.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        [_viewModel nslogSth:x];
    }];
    [self addSubview:field];
}

- (void)dealloc {
    NSLog(@"dealloc被执行");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
