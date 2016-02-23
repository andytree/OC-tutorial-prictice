# OC-tutorial-prictice
OC学习
iOS开发中需要使用的objective-C的知识，和一些练习
##day1
1. 类的定义和使用
	
	```
	//声明
	@interface ClassName : NSObject
	//成员变量声明和方法声明
	@end
	//实现
	@implementation ClassName
	//实现方法
	@end
	```
2. 变量的作用域(局部变量、全局变量、成员变量的区别)

	A.成员变量
	* 写在类的声明的大括号中的变量，我们称之为成员变量，也叫属性，实例变量
    * 成员变量只能通过实例对象来访问
    * 存储：堆（当前对象对应的堆的存储空间中）
    * 存储在堆中的数据，不会被自动释放，只能程序员手动释放
    
    B.全局变量
    * 写在函数和大括号外部的变量，叫全局变量
	* 作用域：从定义开始的那一行，一直到文件的结尾
	* 存储：静态区
	* 程序启动就会分配存储空间，知道程序结束才会释放
    
    C.局部变量
    * 写在函数或者代码块中，成为局部变量
    * 作用域：从定义的那一行开始，一直到大括号结束或者return
    * 存储 ：栈
    * 存储在栈中的数据有一个特点，系统会自动给我们释放
3. 函数和方法的区别

	1.函数属于整个文件, 方法属于某一个类方法如果离开类就不行
 
	2.函数可以直接调用, 方法必须用对象或者类来调用
 注意: 虽然函数属于整个文件, 但是如果把函数写在类的声明中会不识别
 
 	3.不能把函数当做方法来调用, 也不能把方法当做函数来调用
 
 方法的注意点:
 
 * 方法可以没有声明只有实现
 * 方法可以只有声明没有实现, 编译不会报错, 但是运行会报错
 
 如果方法只有声明没有实现, 那么运行时会报: 
 reason: '+[Person demo]: unrecognized selector sent to class 0x100001140'
 发送了一个不能识别的消息, 在Person类中没有+开头的demo方法
 reason: '-[Person test]: unrecognized selector sent to instance 0x100400000'
 
 
 类也有一个注意点:
 类可以只有实现没有声明
 注意: 在开发中不建议这样写
 

4. 常见错误

	1.只有类的声明，没有类的实现  
    2.漏了@end  
    3.@interface和@implementation嵌套  
    4.成员变量没有写在括号里面  
    5.方法的声明写在了大括号里面  
    6.成员变量不能在{}中进行初始化、不能被直接拿出去访问  
    7.方法不能当做函数一样调用  
    8.OC方法只能声明在@interface和@end之间，只能实现在@implementation和@end之间。也就是说OC方法不能独立于类存在  
    9.C函数不属于类，跟类没有联系，C函数只归定义函数的文件所有  
    10.C函数不能访问OC对象的成员  
    11.低级错误：方法有声明，但是实现的时候写成了函数  
    12.OC可以没有@interface同样可以定义一个类  

