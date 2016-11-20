//
//  CCZTableButton.h
//  CCZTableButton
//
//  Created by 金峰 on 2016/11/19.
//  Copyright © 2016年 金峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCZTableButton : UIView
@property (nonatomic, assign) CGFloat offsetXOfArrow;
@property (nonatomic, assign) BOOL wannaToClickTempToDissmiss;

- (instancetype)initWithFrame:(CGRect)frame;

- (void)addItems:(NSArray <NSString *> *)itesName;
- (void)addItems:(NSArray <NSString *> *)itemsName exceptItem:(NSString *)itemName;
- (void)selectedAtIndexHandle:(void(^)(NSUInteger index, NSString *itemName))indexHandle;

- (void)show;
- (void)dismiss;
@end
