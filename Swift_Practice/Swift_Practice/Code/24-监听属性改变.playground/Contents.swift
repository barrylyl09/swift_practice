//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    //swift 中监听属性值 可以用 willSet 和 didSet 方法中监听
    var name:String = "" {
        
        willSet{
            
            //在没有赋值之前
            name // 旧的值 willSet 中没有 oldValue
            newValue   // 新的值 默认的隐式的 变量
            
            print("将要赋值")
        }
        didSet{    //已经赋值完毕了
            name //是新的值
            oldValue // 旧的值   didSet中没有 newValue
            print("已经赋值")
        }
        
    }
    
    //如果  看不习惯 willSet 和 didSet 中的 隐式的 newValue 和 oldValue 可以自己定义：如下
    var sex:String?{
        
        willSet(value){
            name //旧的值
            value //新的将要赋值的值。默认是 newValue 改为了 Value
            print("将要赋值")
        }
        didSet(old){
            name //新的值
            old //旧的值
            print("已经赋值")
        }
    }
    
    //那么计算属性如何监听呢 只能在 get 和 set 中 监听了。注意 set 中 不能在 做 set 。get 中 不能在 get 否则也是 死循环。
    
    //说明点：
    /*
     注意
     1.计算属性因为有get和set方法,因此监视器其实对计算属性没多大用处.对存储属性用处大
     2.初始化值时, 不会调用willSet与didSet,见下面代码.的 Student类的 代码
     3.willSet 和 didSet    set和get 是不能共存的.
     
     */

}

let p = Person()
p.name = "xxxx"

class Student {
    // 默认值
    var age: Int = 0 {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
    //可选类型 可以在初始化的时候没有值
    var name:String?{
        willSet {
            print(newValue ?? "没有name")
        }
        didSet {
            print(oldValue ?? "没有name")
        }
    }
    
    
}









