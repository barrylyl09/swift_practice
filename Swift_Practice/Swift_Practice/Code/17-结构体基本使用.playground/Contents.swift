//: Playground - noun: a place where people can play

import UIKit

//结构体定义 ：
// struct 结构体名称 {
// 属性和方法
// }

struct Point{
    
    //要说明成员变量的类型
    var x:Double
    var y:Double
    
    static var z:Double = 10.0
    
    //实例方法 func
    func dist() {
        print("计算距离")
    }
    
    //类型方法 static func
    static func distance(){
        print("两点距离")
        //在类型方法中 可以访问 类型  属性
        print(z)
    }
    
}

//实例化一个结构体变量  使用构造函数
let s = Point(x: 2.0, y: 3.0)
//调用结构体 实例方法
s.dist()
//调用类型方法
Point.distance()
Point.z


enum Direction{
    
    case ease
    case wease
    case sourth
    case north
    
    
    func test() {
        print("枚举实例方法")
    }
    
    static func test1() {
        print("枚举类型方法")
    }
}

Direction.ease.test()
Direction.test1()

//无论是枚举还是结构









