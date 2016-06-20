//
//  Teacher.m
//  OC-非正式协议
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@implementation Teacher
-(void)buyWater2
{
    NSLog(@"%@没时间,我让%@帮你...",self,_delegate);
    if ([_delegate respondsToSelector:@selector(buyWater1)])
    {
        [_delegate buyWater1];
    }
}
@end
