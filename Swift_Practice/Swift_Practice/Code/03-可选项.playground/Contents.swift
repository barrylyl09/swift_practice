//: Playground - noun: a place where people can play

import UIKit

/***************************可选项 Optional *************************/
/*********************************************************************
 1.可选值:可以有值,可以为nil(用 ? 表示可选值)
 为了区分： 有值 和 没有值
 ********************************************************************/

// URL 为可选项
let URL = NSURL(string: "http://www.baidu.com/") // NSURL

// str 为可选项
var str: String? = "swift"

// 有时候 不知道附什么值
var a:Int?     // 这样写默认为 nil

/*************************** if let *************************/
// if let : 确保 myUrl 有值，才会进入分支
if let myURL = URL {
    print(myURL)
}

/*
 如果想要使用可选类型 要先解包。  !可选类型 就是 强制解包 的意思
 常用写法
 1.可选类型绑定
 if let <#constant name#> = <#optional#> {
 <#statements#>
 }
 if let 或者 if var 是可选绑定的两个关键字。
 */

if let result = URL {
    print(result)
}

/*
 解释上面的代码：
 首先判断 URL 是否为nil，
 a.如果是nil  那么if后面表达式值为 false 。就不走 if后的的 { }
 b.如果发现 URL 不是nil ，那么if 后面的值为 true，就把 URL强制解包，并把解包后的 值 赋值个 result。
 */

/*
 常用写法
 2.guard 守护  guard 要在函数中使用
 */
func testOp() {
    //URL 为可选项
    let url1 = NSURL(string: "http://www.google.com/")
    let url2:String? = nil
    
    // guard 它能够表达“提前退出”的意图
    guard let res = url2 else {
        print("解析为空")
        //print(res) //上面的 res 常量 作用域 不在 else {} 中。而是在 guard {} 之后。
        return
    }
    
    print(res)
    
}

testOp()

func doSth(str: String?)
{
    let v: String! = str
    if v != nil {
        print(v)
    }
    
}

//Swift 中因为有optional, 经常需要判断是否为空。假如没有if let，大致写成上面的样子，有了if let, 可以改写成
func doSomethings(str: String?)
{
    if let v = str {
        print(v)
    }
    
    // if let constant 这个 constant 不能在 if {} 之后使用。作用域只限于 if 后的 {} 中。
}

//假如if中出现的代码很长，我们写代码时可以将错误情况先返回。比如：
func doSomething(str: String?)
{
    let v: String! = str
    if v == nil {
        return
    }
}

//如此上面的这样的代码很常见

//swift也提供一个guard这个语法糖，用guard可以改写成：
func doSomething1(str: String?)
{
    //guard 后面的 条件为 false 走 else {...}
    guard let v = str else { return }
    
    // use v to do something
    //上面解包的 常量可以在 整个函数体体中。
    print(v)
}

var aName: String? = "Barry"
// var aName: String? = nil
var aAge: Int? = 25

if let name = aName,let age = aAge { //可以这样 做 多个可选绑定 。
    print(name + String(age))
}

if var name = aName, var age = aAge {
    print(name)
    name = "嘿嘿"
    print(name + String(age))
}


/*************************** guard let *************************/
/*********************************************************************
 1.guard let 和 if let 相反。表示一定有值,没有就直接返回
 2.降低分支层次结构
 3.playground不能展示效果，要在函数中展示
 ********************************************************************/

class test {
    
    func demo() {
        let aNick: String? = "ningcol"
        let aAge: Int? = nil
        
        //也可以做多个。有一个为 nil 就走 else
        guard let nick = aNick, let age = aAge else {
            
            print("---nil")
            return
        }
        print("guard let: " + nick + String(age))
        
    }
    
}

var t = test()

/*******************************强制解包***************************************/
var dataList:[String]?
dataList = ["zhangsan","lisi"]
/*********************************************************************
 1.dataList? 表示 datalist 可能为 nil
 2.如果为 nil, .count 不会报错，仍然返回 nil
 3.如果不为 nil，.count执行，返回数组元素个数
 4. ?? 为空合运算符 见下面介绍
 *********************************************************************/
let count = dataList?.count ?? 0

// 强制解包 表示 datalist 一定有值,否则会出错！
let cou = dataList!.count

/*******************************空合运算***************************************/
// 空合运算(Nil Coalescing Operator)
/*********************************************************************
 如果可选类型的值为nil，那么则使用默认值。如果有值，直接解包使用。
 1.空合运算符( a ?? b )将对可选类型 a 进行空判断
 2.如果 aName 为 nil，则执行??后面的，否则执行aName（注意??两边都有空格）
 ********************************************************************/
//var name: String? = "fuck"
var name: String? = nil
let selName = name ?? "hehe"    //如果 aName 可选类型的值 为 nil ，那么取 ?? 后面的值。


