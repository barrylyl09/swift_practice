//: Playground - noun: a place where people can play

import UIKit

//调用函数或方法时从第一个参数开始就必须指定参数名

/*
 在Swift的历史版本中出现过在调用函数时不需要指定任何函数参数（或者从第二个参数开始指定参数名），在调用方法时则必须从第二个参数开始必须指定参数名等多种情况，
 而在Swift3.0中不管是函数还是方法都必须从第一个参数开始必须指定参数名（当然可以使用“_”明确指出调用时省略参数）
 */


func sum(num1:Int, num2:Int)->Int {
    
    // num1 num2 函数内部可用 所以为 内部参数
    return num1 + num2
}

// num1  num2 方法调用是，在外部能看见 外部参数
sum(num1: 10, num2: 20)     // old: sum(1,2)或者sum(1, num2: 2)

/*
 从swift 3.0 开始，默认情况下，从第一个参数开始，参数名称即是内部参数，也是外部参数，从上面的例子可以看出
 如果不想要外部参数，可以在参数名称前 加 _
 */

//给外部参数改名称  如下：firstPar 就是外部参数名了
func add(firstPar num1:Int, num2:Int) ->Int{
    return num1 + num2
}

//firstPar 就是外部参数名称了
add(firstPar: 10, num2: 20)

//如果不想要外部参数，可以在参数名称前 加_
func sum1(_ num1:Int,num2:Int)-> Int{
    return num1 + num2
}

//在调用的时候 外部参数就可以 省略了。
sum1(20, num2: 30)  //sum1(<#T##num1: Int##Int#>, num2: <#T##Int#>)

/*
 总结规范：swift 3.0
 尽可能保证不需要写外部参数名名称。
 但是，需要注意，有特殊含义的，还是需要使用外部参数经行描述。
 */





