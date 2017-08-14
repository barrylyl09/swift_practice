//: Playground - noun: a place where people can play

import UIKit

var str = "Hello World"

struct Point{
    
    var x:Double
    var y:Double
    var z:Double
    
    //构造函数注意事项:
    /* 自己定义 “构造函数” != 普通函数
     1.不需要func
     2.必须使用 init 做为名称
     3.在构造函数内部，必须要 保证，所有的非可选属性，必须有值。
     4.如果我们自己定义了构造函数，那么系统自动生成的逐一构造器，就没有了。
     */

    init(x:Double, y:Double) {
        self.x = x
        self.y = y
        z = 0
    }
    
    // 4.如果我们自己定义了构造函数，那么系统自动生成的逐一构造器，就没有了。这里自己再构造一遍。
    init(x:Double, y:Double, z:Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    
}

//默认情况下，结构体自动创建一个 默认构造器 (逐一构造器)。目的，就是为了保证: 当一个实例创建好之后，
//里面所有的非可选属性，都有值。
//let p0 = Point(x: 10.0, y: 1.8, z: 2.3)

let p = Point(x: 10.0, y: 1.1)

//系统默认生成的构造函数 是逐一构造器。
//逐一构造器 就是逐个给里面的非可选属性赋值，目的，就是为了保证: 当一个实例创建好之后，
//里面所有的非可选属性，都有值。








