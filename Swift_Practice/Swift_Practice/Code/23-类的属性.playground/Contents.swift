//: Playground - noun: a place where people can play

import UIKit

//swift 中的属性有多种：
//存储属性
//计算属性
//类属性
//类的方法
//Swift中的懒加载会使用到关键字lazy

class Stu{
    
    /****实例属性 (实例的属性又分为 存储属性 计算属性)****/
    //1.存储属性：可以直接用来存储数值的属性。存储属性默认会提供 getter 和 setter方法。
    //就是存储一个常量或变量,类似Java中的成员变量,如下：
    
    var name:String = ""
    var age:Int = 0
    var score_yuwen:Double = 0
    var score_en:Double = 0
    
    //2.计算属性 计算属性不存储实际的值，而是提供一个 getter 和 一个可选的 setter 属性，来间接获取和设置其他属性。
    //计算属性的值是不固定的,因此不能用let修饰,只能用var来申明是变量
    //计算属性一般 只提供 getter 方法。
    //如果只提供 getter属性，而不提供 setter 属性，则该计算属性，为只读属性，并且可以省略 get{}
    
    //avgScore 是一个只读的 计算属性。因为没有提供 setter
    
    var avgScore:Double {
        
        get{
            return (score_yuwen + score_en) / 2
        }
    }
    //因为为 只读属性 可以省略 get{}
    var avgScore0:Double {
        return (score_yuwen + score_en) / 2
    }
    
    var avgScorel:Double{
        set{
            //setter 方法中有一个 隐式的 标识符 newValue 接收 外部传进来的值
            print("newValue is \(newValue)")
        }
        get{
            return (score_yuwen + score_en) / 2
        }
        
    }
    
    // 不写 getter方法报错 ： variable with a setter must also have a getter
    // 也就是说 计算属性 有 setter 必选要有 getter 方法。要不 还有何意义。如下：
    //    var avgScore2:Double{
    //        set{
    //            //setter 方法中有一个 隐式的 标识符 newValue 接收 外部传进来的值。
    //            print("newValue is \(newValue)")
    //        }
    //    }
    
    
    /*----------2.类属性 (或者叫类型属性)---------*/
    //1.类属性(或者叫做类型属性)用class关键字修饰.类属性只能是计算属性.
    //2.类属性就是类似java中static修饰的属性.一个类只有一份,且多个实例对象共享.可直接用类名调用
    
    static var personCount :Int = 0
    init() {
        Stu.personCount += 1
    }
    deinit {
        Stu.personCount -= 1
    }
    
    //方法：实例方法 和 类型方法
    //1.实例方法
    func test() {
        print("当前有 \(Stu.personCount) 个实例对象")
    }
    
    //类型方法 使用 static 修饰 ，还有 class 修饰的
    //1.实例方法
    static func testStaic() {
        print("当前有 \(Stu.personCount) 个实例对象")
    }
    
    class func testClass() {
        print("static --当前有 \(Stu.personCount) 个实例对象")
    }
    
    /**
     static 和 class 修饰的 区别在于
     static 修饰的 类方法 不可以在继承该类的子类中 重写
     class  修饰的 类方法 可以在继承该类的子类中 重写
     实例如下 Graduate 研究生类 继承 Stu
     **/
    
    
    //懒加载 ：
    // Swift中的懒加载会使用到关键字lazy
    lazy var topics: NSMutableArray? = NSMutableArray()
    
    // 当然如果要在懒加载时做一下初始化配置,那么我们会使用闭包的形式
    lazy var topic: NSMutableArray? = {
        // 这里面进行初始化配置
        return NSMutableArray()
    }()
    
}


//类属性实例
var p:Stu? = Stu()
var p1:Stu? = Stu()
var p2:Stu? = Stu()
//avgScore 是一个只读的 计算属性

Stu.personCount

//释放
p = nil
Stu.personCount


//下面的计算属性 只有 getter 方法。没有 setter 方法。
//p1?.avgScore = 50 // cannot assing to property 'avgScore' is a get-only property
//p1?.avgScore0 = 30 //cannot assign to property: 'avgScore0' is a get-only property

p1?.avgScorel = 30
p1?.test()
Stu.testStaic()
Stu.testClass()

class Graduate : Stu{
    
    /**
     static 和 class 修饰的 区别在于
     static 修饰的 类方法 不可以在继承该类的子类中 重写
     class  修饰的 类方法 可以在继承该类的子类中 重写
     实例如下 Graduate 研究生类 继承 Stu
     **/
    
    //报错 cannot override static method
    //    override static func testStaic(){
    //        print("static --当前有 \(Stu.personCount) 个实例对象")
    //    }
    //覆写父类方法需要添加 关键字 override 。 overriding declaration requires an 'override' keyword
    
    override class func testClass(){
        
        print("static --当前有 \(Stu.personCount) 个实例对象")
    }
    
    
}


/* 注意点*/
/*
 注意
 1.计算属性的值是不固定的,是计算得来的,所以只能使用var来修饰,不能使用let
 2.计算属性本身是不能直接复制的,他是通过其他的变/常量计算结果得到的数据.否则容易造成 死循环。
 
 */













