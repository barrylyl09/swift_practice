//: Playground - noun: a place where people can play

import UIKit


//假如一个函数有很多个  参数。 怎么弄呢？方案一 使用数组
func add(nums:[Int]) ->Int{
    
    var result = 0
    for num in nums {
        result += num
    }
    
    return result
    
}

add(nums: [10,10,20,30])

//上面的 也是一中写法 使用更简洁的方法 可变参数:
// 内部参数名：类型... 这样来表示多个参数。
//函数内部，把这个参数，当做数组来进行处理
//函数外部，直接可以传递多个值。

func addNB(nums:Int...) -> Int{
    
    var result = 0
    for num in nums {
        result += num
    }
    
    return result
}

//使用：
addNB(nums: 10,20,10,30)

//写的 再好看点 省略 外部参数
func addNBB(_ nums:Int...) -> Int{
    var result = 0
    for num in nums {
        result += num
    }
    
    return result
    
}

//使用：更简洁
addNBB(10,10,20,30) //addNBB(<#T##nums: Int...##Int#>)




