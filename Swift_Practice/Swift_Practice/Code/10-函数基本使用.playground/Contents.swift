//: Playground - noun: a place where people can play

import UIKit

//func 函数名(参数1:参数类型 ...形参列表) 返回( -> )  返回类型
func add(num1:Int, num2: Int)->Int {
    
    return num1 + num2
}

add(num1: 1, num2: 5)


//无参数 无返回值
func add()->Void{
    return
}

//() :表示空的元组
func add1() ->(){
    
}

//也就是没有返回值
func add2() {
    return
}

//无参数 有返回值 -> 返回值类型即可
func add3() ->Int{
    return 3
}

//元组 也是有类型的 每个位置 对应 对应的类型 如：
let yuanzu = (10, 10.5, "yy")   // 根据类型 推导 可以看到 是 let yuanzu: (Int, Double, String)

//特殊 返回多个值得函数 （返回元组）
func getP()->(Int,String,Double) {
    return (10, "haha", 10.55) //元组 也是有类型的 每个位置 对应 对应的类型
}

func getPerson()->(name:String,age:Int){
    return ("sz",28)
}



