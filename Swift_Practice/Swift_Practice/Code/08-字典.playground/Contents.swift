//: Playground - noun: a place where people can play

import UIKit

/***************************字典定义*************************/
//方括号 [] 来创建字典  但是里面是 key:value 形式 
let dict = ["name":"wang", "age":"25"]

let arry  = [
    dict,dict1
]
print(arry)

/***************************字典增删改 字典是 let 申明的 不可变。*************************/
// 增加
dict1["sex"] = "man"
print(dict1)
// 修改（通过key来取值，key不存在就是新增）
dict1["name"] = "zhangsan"
print(dict1)
// 删除(直接给key进行删除)
dict1.removeValue(forKey: "age") //字典是 let 申明的 不可以 删除
print(dict1)


/*******************字典的 遍历  ********************/
for e in dict {
    // e 为元组 。
    print("e.key is \(e.key)"+"e.value = \(e.value)")
}

for (key,value) in dict1{
    //e 为元组
    print("key:\(key), value:\(value)")
}

