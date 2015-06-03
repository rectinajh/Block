//
//  main.m
//  Block
//
//  Created by rimi on 15/6/3.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
#pragma mark - Block
        //概念：匿名函数（一般用于回调）网络请求
        //函数指针与指针函数
        
        //无参无返回值
        void (^block) () = ^ {
            NSLog(@"hello");
        
        };
        //调用
        block();
        
        //有参数
        void (^logMaxValue)(int a, int b) = ^(int a, int b) {
            int max = a > b ? a : b;
            NSLog(@"max = %d",max);
        };
        logMaxValue(10 , 100);
#pragma  mark - block 中变量
        __block int a = 100;
        __block char *str = "hello";
        char *str1 = "hello";
        
        void (^testBlock)() = ^ {
            NSLog(@"%d",a);
            NSLog(@"str = %s,str1 = %s",str,str1);
            a = 100;
        };
        str = "world";
        str1 = "world";
        a =50;
        testBlock();
        
        typedef <#type#> <#name#>
        
        
    return 0;
}
}