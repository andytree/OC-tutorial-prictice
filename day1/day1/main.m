//
//  main.m
//  day1
//
//  Created by 唐资富 on 16/2/21.
//  Copyright © 2016年 tzf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *p = [Person new];
        p.name = @"Lilei";
        p.age = 33;
        p.hight = 1.6;
        NSLog(@"name is %@,age is %d,hight is %d", p.name , p.age ,p.hight);
    }
    return 0;
}
