//
//  Person.m
//  OC-非正式协议
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"
#import "Student.h"
#import "Teacher.h"

@implementation Person
-(NSString *)description
{
    return _name;
}
-(void)Study
{
    NSLog(@"我要喝水...");
    //通知某对象，帮我买水
    //1.设置代理
    if ([_delegate respondsToSelector:@selector(buyWater1)])
    {
        [_delegate buyWater1];
    }
    if ([_delegate respondsToSelector:@selector(buyWater2)])
    {
        [_delegate buyWater2];
    }
}
@end
