//: Playground - noun: a place where people can play

import UIKit

class Stu:NSObject{
    
    var name:String = ""
    var age:Int = 0
    
    //析构函数 相当于 OC的 dealloc 函数。
    deinit {
        print("对象释放了")
    }
    
}

var p:Stu? = Stu()
p = nil

//类的扩展  尤其是在  控制器中  请参考  TestExtTableViewController 控制器的 扩展。
		