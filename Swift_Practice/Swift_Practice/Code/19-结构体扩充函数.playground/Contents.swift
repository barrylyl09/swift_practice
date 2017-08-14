//: Playground - noun: a place where people can play

import UIKit


struct Point{
    
    
    var x:Double
    var y:Double
    
    //1.记录实例创建了 多少个
    static var count:Int = 0
    static func printCount(){
        
        //类型函数可以访问 类型成员
        print("实例有\(count)个了")
        
    }
    init(x:Double, y:Double) {
        
        //在构造函数中要给 每个非可选的 成员变量 逐一 赋值
        self.x = x
        self.y = y
        Point.count += 1
    }
    
    //2.自己写的扩充函数
    //默认情况下，在实例函数里面，是无法修改实例属性的，
    //除非，使用关键字 mutating 进行修饰，让 self 可以改变。
    mutating func movex(x:Double) {
        self.x += x
    }
    
}

var p  = Point(x: 10.1, y: 20.0)
var p2 = Point(x: 10.1, y: 20.0)

Point.printCount()

p.movex(x: 10)
print("x值为\(p.x)")

//给系统的 结构体 扩展方法 关键字 extension
extension CGPoint{
    //同样 系统的 结构体 扩充函数 要改变 成员变量就 的用 mutating 来修饰。
    mutating func movex(x:CGFloat) {
        self.x += x
    }
    
}

var point = CGPoint(x: 20.5, y: 20.5)
point.movex(x: 10)
point(point.x)












