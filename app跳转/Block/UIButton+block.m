//
//  UIButton+block.m
//  Block
//
//  Created by fuchun on 2017/5/25.
//  Copyright © 2017年 le. All rights reserved.
//

#import "UIButton+block.h"
#import <objc/runtime.h>
static const void *associatedKey = "associatedKey";

@implementation UIButton (block)

-(void)setBlock:(Myblock)block{
    objc_setAssociatedObject(self, associatedKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (Myblock)block
{
    return objc_getAssociatedObject(self, associatedKey);
    return self.block;
}


-(void)buttonClick{
    if (self.block) {
        self.block(@"001");
    }
}

@end
