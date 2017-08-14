//: Playground - noun: a place where people can play

import UIKit

/*
 1. 在函数内部 默认接收到参数被赋值给了一个常量，在swift 3.0 中，如果想要改变，需要在函数内部，使用var修饰
 */
func change(num:Int){
    
    //不经过 var 修饰 直接 赋值是 赋值不了的
    var num = num
    num = 20
    num
}

let b = 10
//外部 传入的
change(num: b)

/*
 引用类型(指针的传递)
 默认情况下，函数的参数是值传递，如果想要改变外面的变量，组需要传递变量的地址。
 必须是 var 修饰的 变量。因为需要在 内部改变其值。
 因为在swift中没有像 OC C 中的 那种 指针类型 int* 那么在swift中是怎么写呢？
 swift提供了 inout 的关键字就可以实现。
 */

func changeValue(num: inout Int){
    
    num = 10
}

var a = 20
changeValue(num: &a)
a

/*
 swift 中函数可以嵌套 做为一整块功能来使用。
 */






