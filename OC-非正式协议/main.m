//
//  main.m
//  OC-非正式协议
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+allMethod.h"
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str=@"hello";
        [str eat];
        [str play];
        [NSString sleep];
        
        [Person sleep];
        Person *p1=[Person new];
        [p1 setName:@"小明"];
        [p1 eat];
        [p1 play];
        
        //委托代理
        [p1 Study];
//        //设置委托的对象
        Student *s1=[Student new];
//        [p1 setStu:s1];
//        [p1 Study];
        
        Teacher *t1=[Teacher new];
//        //重新设置委托
//        [p1 setTe:t1];
//        [p1 Study];
        
        [p1 setDelegate:s1];
        [p1 Study];
        [p1 setDelegate:t1];//改变代理
        //t1没时间，他委托第二个学生
        Student *s2=[Student new];
        [t1 setDelegate:s2];
        [p1 Study];
        
        //响应选择器 SEL
        SEL func=@selector(Study);
        if ([p1 respondsToSelector:func])
        {
            NSLog(@"YES");//SEL相当于给方法取别名
            [p1 performSelector:func];
        }
    }
    return 0;
}
