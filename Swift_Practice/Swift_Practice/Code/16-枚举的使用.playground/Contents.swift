//: Playground - noun: a place where people can play

import UIKit

/*
 swift 中的枚举更加灵活，可以提供一个值是字符串，一个字符，或是一个整型值 或者 浮点值。
 */

//规范：在swift 3.0 中，枚举值统一是首字母小写。

enum Direction {
    
    case east
    case weast
    case south
    case north

}

//使用
Direction.east


//多个成员值 也可以写在一行中
enum Direction1 {
    
    case east, weast, south
}

//可以给枚举类型赋值  在swifty中枚举类型， 默认情况下， 不表示任何类型。 就是一个标识
enum Direction2:Int {
    
    //原始值的推断：在Swift中只有Int型的原始值可以推断，其余类型包括Double、String、Character类型都无法在原始值中推断；
    case east = 1
    case weast = 2
    case south
    case north
    
}

// rawValue 代表是一个枚举值对应的原始值
//枚举值 -> 原始值
let a = Direction2.south.rawValue   //let a: Int 可以看到 a 为 Int 类型

//原始值 -> 枚举值 // 跟哪个 匹配 就是 哪个枚举值 。 所以要是没有匹配的 就是 nil。 所以为可选类型
let b = Direction2(rawValue: 4)     //let b: Direction2? 是可选类型
b

enum Path:String{
    
    case cache = "user/desktop/cache"
    case document = "user/desktop/document"
    
}

func test(path:Path){
    
    if path == Path.cache {
        print(path.rawValue)
    }
}

test(path: Path.cache)








