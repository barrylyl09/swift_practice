//: Playground - noun: a place where people can play

import UIKit


/**************************if语句*************************/
/*********************************************************************
 1.必须要有大括号
 2.没有"非零即真"的概念，只有ture／false
 *********************************************************************/
let num = 20
if num > 10{
    print("大于10");
}else{
    print("小于或等于10")
}

/**************************switch*************************/
/*********************************************************************
 1.Switch 值可以是任何类型
 2.作用域 仅在 case 内部
 3.不需要 break
 4.每一个 case 都要有代码
 5.case 后可以是 多个值。
 6.case 默认不穿透 ，不用显式的加上break。
 Swift的Switch语句会自动在case结尾处加上break，执行完满足条件的case部分后，就自动退出了。
 *********************************************************************/

let name = "barry"

switch name {
case "barry":
    let age: Int? = 18
    print(name, age ?? 18)

case "alexandra":
    print("hehe")
    
default:
    print("other")
}

//但是在某些情况下，我们可能会希望Switch能同时执行两条case，那么可以这样：
var i = 3;
switch i {
case 1,3: //在case后的多个条件中，用逗号隔开即可。
    print("fuck")
//switch must be exhaustive, consider adding a default clause
default: //swift 中的 Switch 必须要 透彻。要有 default 缺省子句 去了default 报错。
    print("other")
}

//如果就是想执行完一条case之后，想继续执行下一条case，就要用到一个新的关键字：
var j = 0
switch j {
case 0:
    "0" //被输出
    fallthrough
case 1:
"1" //被输出
case 2:
    "2"
default:
    "default"
}

//支持多种数据类型
//在Objective-C里，Switch语句只能支持整形的数据（或者一个字符）
//但是在Swift里，Switch能支持多种数据类型，包括浮点、布尔、字符串等：

//支持浮点数
let float = 1.5
switch float {
case 1.5:
    print("浮点数")
default:
    print("default")
}


//支持布尔值
let isSuccess = true
switch isSuccess {
case true:
    print("Success")
default:
    print("false")
}

// 支持字符串
let aname = "Bannings"
switch aname {
case "Bannings":
    print("Bannings")   //被输出
default:
    "default"
}


//支持区间运算符
//不仅仅是循环结构里可以用区间运算符，在Switch里同样可以用区间运算符：
var value = 15
switch value {
case 0 ... 10:
    print("0~10之间")
case 11 ... 15:
    print("11~15之间")
default:
    break;//啥也不想写 直接 break
}

//对某个数值区间进行批量匹配，这样是不是很酷？浮点数也同样支持区间运算符。

/**********************支持元组********************/
//作为被大大增强的Switch，元组也是被支持的：
let request = (true,"success")
switch request {
case (true,"success"):
    print("success")
case (false,"failed"):
    print("failed")
default:
    print("unknow")
}























