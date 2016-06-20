//
//  Person.h
//  OC-非正式协议
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Student.h"
//#import "Teacher.h"

@interface Person : NSObject
@property(strong,nonatomic)NSString *name;
//@property(strong,nonatomic)Student *stu;
//@property(strong,nonatomic)Teacher *te;
@property(strong,nonatomic)id delegate;
-(void)Study;
@end
