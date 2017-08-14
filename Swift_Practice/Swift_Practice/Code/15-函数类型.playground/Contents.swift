//: Playground - noun: a place where people can play

import UIKit

//变量 或者 常量 都是有 类型的 。那么函数的类型呢？

// (Int, Int) -> Int 参数类型和返回类型 的组合 是 函数类型.

func add(num1:Int,num2:Int) ->Int{
    
    return num1 + num2
}

let b = add //可以看到 b 的类型 ： let b：(Int, Int) -> Int

func jian(num1:Int, num2:Int) ->Int{
    return num1 - num2
}

//参数是个函数类型
func exc(num1:Int,num2:Int,fun:(Int,Int)->Int) ->Int{
    
    return fun(num1, num2)
}

var result = 0

//fun 函数类型 为 （Int, Int） -> Int 函数名 为函数 指针
result = exc(num1: 20, num2: 10, fun: add)

//同样 减法 也是 （Int, Int）-> Int 类型的函数
result = exc(num1: 20, num2: 10, fun: jian)


		