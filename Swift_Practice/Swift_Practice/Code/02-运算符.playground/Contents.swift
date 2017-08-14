//: Playground - noun: a place where people can play

import UIKit

/*
 这里主要 学习 注意 swift 的不同的 。基本的  ＋ - x ÷ /(求模)  %(求余) 就不在赘述。
 
 */

// 1 任何情况下都不会做隐式转化，必须以相同类型进行计算
let num1 = 1
let num2 = 2.2
let num3 = Double(num1) + num2 // 直接 num1 + num2 报错

// 1.2 必须要是显式类型的转化
let j = 2.2             //let j: Double    小数 默认推导为 Double 类型
let i:Float = 1.2       //Float 类型
i + Float(j)           //必须类型相同才可以 做运算 swift为了安全 不会隐式 的去做 转换


// 2.区间运算
/*********************************************************************
 1.闭区间运算符( a...b )定义一个包含从 a 到 b (包括 a 和 b )的所有值的区间
 2.半开区间( a..<b )定义一个从 a 到 b 但不包括 b 的区间
 ********************************************************************/

print("---------------闭区间-------------------")
for index in 1...5 {
    print(index) // 从1 开始 打印到 5
}
print("---------------半开区间-------------------")

for i in 1..<5 {
    print("半开区间:\\(i)")
}


// 10.逻辑运算
/*********************************************************************
 1.逻辑非(!a):布尔值取反
 2.逻辑与( a && b ):只有 a 和 b 的值都为 true 时，整个表达式的值才会是 true
 3.逻辑或( a || b ):两个逻辑表达式的其中一个为 tru e ，整个表达式就为 true
 ********************************************************************/
let allowedEntry = false
let enteredDoorCode = true

//1.逻辑非（!a）:布尔值取反
if !allowedEntry {
    print("ACCESS DENIED")
    
}

//2.逻辑与( a && b): 只有 a 和 b 的值都为 true 时，整个表达式的值才会是 true
if allowedEntry && enteredDoorCode {
    print("welcome!")
} else {
    print("ACCESS DENIED")
}

//3.逻辑或 ( a || b ): 两个逻辑表达式的其中一个为 true，整个表达式就为 true
if allowedEntry || enteredDoorCode {
    print("welcome!")
} else {
    print("ACCESS DENIED")
}

//swift 中 if 后的 条件表达式 必须是 true 或者 false 。 不再像 C 中 非0即真
var condition = false
if !condition {
    print("Welcome")
}








