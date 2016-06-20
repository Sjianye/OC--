//
//  NSObject+allMethod.m
//  OC-非正式协议
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "NSObject+allMethod.h"

@implementation NSObject (allMethod)
-(void)eat
{
    NSLog(@"%@ eat...",self);
}
-(void)play
{
    NSLog(@"%@ play...",self);
}
+(void)sleep
{
    NSLog(@"%@ sleep...",self);
}
@end
