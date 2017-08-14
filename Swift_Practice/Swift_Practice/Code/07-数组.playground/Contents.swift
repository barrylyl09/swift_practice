//: Playground - noun: a place where people can play

import UIKit

/***************************数组定义*************************/
//方括号 [] 来创建数组
let array1 = ["zs", "lisi"]     // let array1: [String]

let array2 = [1,2,3,4,5]

var array3:[Int]  //定义一个数组 （没有初始化）
array3 = [Int]() //初始化


//声明空数组， （必须初始化）
let array4 = [Int]()    // 等价上面两行代码

//该组组中装 任何 类型的
let array5:[Any] = ["zs","ls",10,10.5]

var arr3 = [Double](repeating: 0.0, count: 5) //[0.0, 0.0, 0.0]
var arr4 = Array(repeating:3.0, count: 3)   //[3, 3, 3]

//申明数组中 指定 类型为 String 类型
var arr:[String] = ["Alex", "Brian", "Dave"]
print(arr.count)
print(arr[0])

/*******************数组遍历*******************/
for name in arr {
    print("name is \(name)")
}

//区间方式
for i in 0..<array2.count {
    print(array2[i])
}


// 同时遍历下标和内容 -- 变量 e 是个 元组
for e in array2.enumerated() {
    
    print(e)
    print("元组 \(e.element) 元组\(e.offset)")
    
}


//反序遍历
for a in array2.reversed(){
    
    print("a is \(a)")
}


/****************数组的怎删改**************/
//增加
arr.append("swift")

//合并（类型必须一致）
let arr1 = ["Evi", "Tank"]

arr += arr1

//修改 只有 用 var 申明的 数组才可以 修改
arr[0] = "Tom"
print(arr)

//删除
arr.removeFirst()
print(arr)

arr.remove(at: 2)
print(arr)










