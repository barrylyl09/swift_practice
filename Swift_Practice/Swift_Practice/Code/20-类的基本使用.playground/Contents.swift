
//: Playground - noun: a place where people can play

import UIKit

//swift 中定义类 
class Person{
    
    
    //属性 成员属性 类属性
    var name:String
    var age :Int
    
    //类是不会像结构体一样自动生成 "逐一构造器" 来保证 非可选的成员属性必须有值。
    //所以解决方法有：
    //1.在构造函数中初始化所有 非可选的成员值。

    init() {
        self.name = "xxx"
        self.age = 0
    }
    init(name:String,age:Int) {
        self.name = name
        self.age = age

    }
    
    
}
