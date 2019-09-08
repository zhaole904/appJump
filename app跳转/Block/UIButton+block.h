//
//  UIButton+block.h
//  Block
//
//  Created by fuchun on 2017/5/25.
//  Copyright © 2017年 le. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^Myblock)(NSString *str);

@interface UIButton (block)
@property (nonatomic, copy) Myblock block;
@property (nonatomic, strong) NSString *tt;
@end
