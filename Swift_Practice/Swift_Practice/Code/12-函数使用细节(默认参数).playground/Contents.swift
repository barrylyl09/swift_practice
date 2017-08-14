//: Playground - noun: a place where people can play

import UIKit

//默认参数
/*
 在某些情况，如果没有传入具体的参数，可以使用默认的参数
 注意:
 如果使用默认值，那么函数的接收参数就可以是必传参数 和 可传参数的任意组合。
 */


func add(num1:Int,distance:Int = 3) ->Int{
    return num1 + distance;
}

//可以不传递 默认的 参数。
add(num1: 10)
add(num1: 10, distance: 20)

//使用场景 网络请求加载。第一页 还是 第 n 页 。传了使用外部传入的值，不传使用默认的值。