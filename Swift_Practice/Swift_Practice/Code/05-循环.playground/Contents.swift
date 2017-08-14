//: Playground - noun: a place where people can play

import UIKit

/***************************for循环*************************/
// 去掉了C语言风格的循环( ..< 区间运算符)
for i in 0..<10{
    print(i) //打印 0 - 9
}

print("------------步长循环 增加-----------")
//递增
for i in stride(from: 0, to: 10, by: 2) //stride 美音 /straɪd/ 跨过；大踏步走过
{
    print(i)    // 0 2 4 6 8
}

print("------------步长循环 减少-----------")
// 递减
for i in stride(from: 12, to: 0, by: -2) {
    print(i)
}

print("----反序循环----")
let range = 0...10
//反序循环
for i in range.reversed(){
    print(i)
}

/***************************while循环*************************/
print("----while循环----")
var n = 2
while n < 10 {
    n = n * 2
    print("n == \(n)")
}
print(n)

/***************************epeat-while循环*************************/
//它和 while 的区别是在判断循环条件之前，先执行一次循环的代码块。然后重复循环直到条件为 false
var m = 2
repeat {
    m = m * 2
    print("n == \(m)")
} while m < 100

print(m)





