//
//  ViewController.m
//  CCZTableButton
//
//  Created by 金峰 on 2016/11/19.
//  Copyright © 2016年 金峰. All rights reserved.
//

#import "ViewController.h"
#import "CCZTableButton.h"

@interface ViewController ()
@property (nonatomic, strong) CCZTableButton *table;
@property (nonatomic, strong) CCZTableButton *table2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIButton *button = [[UIButton alloc] init];
    button.frame=CGRectMake(50, 100, 100, 40);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(clcikbuton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.table = [[CCZTableButton alloc] initWithFrame:CGRectMake(CGRectGetMinX(button.frame), CGRectGetMaxY(button.frame), 100, 0)];
    self.table.offsetXOfArrow = 40;
    self.table.wannaToClickTempToDissmiss = NO;
    [self.table addItems:@[@"Objective-C",@"Swift",@"C++",@"C",@"Python",@"Javascript"]];
    [self.table selectedAtIndexHandle:^(NSUInteger index, NSString *itemName) {
        NSLog(@"%@",itemName);
    }];
    
    
    
    UIButton *otherButton = [[UIButton alloc] init];
    otherButton.backgroundColor = [UIColor blackColor];
    otherButton.frame = CGRectMake(200, 100, 100, 40);
    [otherButton setTitle:@"Swift" forState:UIControlStateNormal];
    [otherButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [otherButton addTarget:self action:@selector(clcikbuton2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:otherButton];
    
    self.table2 = [[CCZTableButton alloc] initWithFrame:CGRectMake(CGRectGetMinX(otherButton.frame), CGRectGetMaxY(otherButton.frame), 100, 0)];
    self.table2.offsetXOfArrow = -30;
    [self.table2 addItems:@[@"Objective-C",@"Swift",@"C++",@"C",@"Python",@"Javascript"] exceptItem:@"Swift"];
    [self.table2 selectedAtIndexHandle:^(NSUInteger index, NSString *itemName) {
        [otherButton setTitle:itemName forState:UIControlStateNormal];
    }];
}

- (void)clcikbuton {
    [self.table show];
}

- (void)clcikbuton2 {
    [self.table2 show];
}

@end
