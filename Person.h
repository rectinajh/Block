//
//  Person.h
//  Block
//
//  Created by rimi on 15/6/3.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import <Foundation/Foundation.h>

//为代码块取别名
typedef void(^CallBack) (int a, int b);

@interface Person : NSObject

//代码块使用copy方式
@property (copy,nonatomic)CallBack      callBack;



@end
