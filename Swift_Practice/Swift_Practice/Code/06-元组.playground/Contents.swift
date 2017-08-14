//: Playground - noun: a place where people can play

import UIKit

// 元组的元素个数固定，不允许增加、删除
var stu = (404,"小白")
// 支持嵌套
var msg = ("基本信息", ("李刚",34))
print(stu)
print(msg)

var (a, b) = stu
print(a, b)


//如果仅需要元组中的个别的值，可以使用"_"的方式来处理不需要的值
let (c,_) = stu
print(c)


//通过序号获得元组的值
print("status is \(stu.0)")

//可以修改元组元素
stu.0 = 500

//为了清晰表述 元组 元素含义
let message = (status: 100, msg:"哈哈")
print("status is \(message.msg), status is \(message.status)")





