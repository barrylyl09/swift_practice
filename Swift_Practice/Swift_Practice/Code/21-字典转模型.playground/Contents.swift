//: Playground - noun: a place where people can play

import UIKit

class Stu : NSObject {
    
    var name:String = ""
    var age:Int = 0
    
    
    init(dict:[String:Any]) {
        
        //复习可选类型 和 类型转换。
        
        //as? 代表 系统尝试帮你进行转换，转失败了，值就是 nil。也就是可选类型。只有可选类型才可 为 nil 。
        //?? 空合运算 如果可选类型的值为nil，那么则使用默认值。如果有值，直接解包使用
        //        let name = dict["name"] as? String ?? ""
        //        let age = dict["age"] as? Int ?? 0
        //        self.name = name
        //        self.age = age
        
        //1.这样穿进来一个 字典每个值 都要去解析
        
        //2.使用 KVC 要使用 KVC 就得继承 NSObject
        super.init()    //先要 调用 super.init() 初始化 self
        setValuesForKeys(dict)
    }
    
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print(key,value ?? "\(key)没有值") // ?? 是空合运算。
    }

    
}

let dict:[String:Any] = ["name":"hahahhah", "age":10]
let p = Stu(dict: dict)
p

//如果 使用 KVC 找不到 key 对应属性，程序就会奔溃 解决方法 setValue：forUndefinedKey 函数
let dict1:[String:Any] = ["name":"hahahah","age":10,"score":20.5]
let p1 = Stu(dict: dict)
p1



		
