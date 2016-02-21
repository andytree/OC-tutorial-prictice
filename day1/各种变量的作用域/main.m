//
//  main.m
//  各种变量的作用域
//
//  Created by 唐资富 on 16/2/21.
//  Copyright © 2016年 tzf. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Person : NSObject
{
    //写在类的声明的大括号中的变量，我们称之为成员变量，也叫属性，实例变量
    //成员变量只能通过实例对象来访问
    //存储：堆（当前对象对应的堆的存储空间中）
    //存储在堆中的数据，不会被自动释放，只能程序员手动释放
    int age;
}
@end

@implementation Person

//nothing...

@end

//写在函数和大括号外部的变量，叫全局变量
//作用域：从定义开始的那一行，一直到文件的结尾
//存储：静态区
//程序启动就会分配存储空间，知道程序结束才会释放
int one;
int two = 100;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 写在函数或者代码块中，成为局部变量
        //作用域：从定义的那一行开始，一直到大括号结束或者return
        //存储 ：栈
        //存储在栈中的数据有一个特点，系统会自动给我们释放
        int number = 10;
        {
            int value;
        }
    }
    return 0;
}
