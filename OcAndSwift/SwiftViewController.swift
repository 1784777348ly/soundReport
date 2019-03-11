//
//  SwiftViewController.swift
//  OcAndSwift
//
//  Created by liuyang on 2019/3/9.
//  Copyright © 2019年 liuyang. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str:String = "one smart dog"
        
        print(str);
        
        let a = 12.4
        
        let b = "\(a)"
        
        print(b)
        
        let b1 = String(a)
        
        print(b1);
        
        let c = String(stringInterpolationSegment:a)
        
        print(c);
        
        
        
//        var t: (name: String?, age: Int) = (nil, 12)
//
//        var tx: (name: )
//
//
//        var t2 : (String, Int) = (name:"李刚",age:34)
//
//        t2.name = "xxxxx"
        
        
        let range = 1...5
        
        if  range.contains(8) {
            print("ok")
        }else{
            print("no")
        }
        
        
        var  strv: String! = "lll"
        
        let strvx = strv + "xxxx"
        
        print("strvx = \(strvx)")
        
        
        var list:[Any]?
        
        list  = ["xxx", ["ccc"], ["xx":"ccc"], (4, "xxx"), ]
        
        for (index, value) in list!.enumerated() {
            
            print("第\(index+1)个,类型是\(type(of: value)) 值是\(value)")
        }
        
        
        for value in list! {
            
            print("--ppppp\(value)")
        }
        
        
        var set: Set<String>?
        
        set = ["xxx", "xxx", "cvbn", "ffggg", "jjjkkll"];
        
        for value in set! {
            print(value)
        }
        
        var dic: [String : Any]?
        
        dic = ["xxx":3,"ccc":"ddd","pppp":"ddd"];
        
        for value in dic!.keys.sorted(){
            print(value);
        }
        
        
        var arrmm = [String](dic!.keys.sorted())
        
        
        let naturalCount: String
        
        
        
        if callAsk(phone: "132456789") {
            
            
        }else{
            
        }
        
//         let sum = swip(num1: 2, num2: 4)
        
        var x1 = 8
        var x2 = 10
        
        swip(one: &x1, &x2)
        print("x1 = \(x1)-------x2 = \(x2)")
        
        
        
        name {
            
        }
        
        name(block: {
            
        })
        
        name(){
            
        }
        
        
        testAdd(2, 3, expression:{(a, b) -> Int in return a+b });
        
        testAdd(2, 3){
             $0 + $1
        }
        
        testAdd(2, 3, expression: +)
        
        
        let five = ArithmeticExpression.number(5)
        let four = ArithmeticExpression.number(4)
        let sum = ArithmeticExpression.addition(five, four)
        let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
        
        
        print(evaluate(product))
        
        
        
        
        
        
        
//         print(Int(a)!);
        
        
        
//        print("one后面的，和dog之前的",str.index(str.startIndex, offsetBy: 3, limitedBy: str.endIndex) ?? 0)
        
        
        
    }
    
    
    func callAsk(phone: String) -> Bool {
        
        if phone.count == 11 {
            return false
        }
        return true;
    }
    
    
    func swip(one num1: inout Int, _ num2: inout Int)  {
        
       num1 = num1 + num2
       num2 = num1 - num2
       num1 = num1 - num2
    }
    
    func name(block: () -> Void) {
        
        
    }
    
    func testAdd(_ a: Int, _ b: Int, expression: (Int, Int) -> Int) -> Int {
        
        return expression(a,b);
    }
    
    
    indirect enum ArithmeticExpression {
        case number(Int)
        case addition(ArithmeticExpression, ArithmeticExpression)
        case multiplication(ArithmeticExpression, ArithmeticExpression)
    }
    
    func evaluate(_ expression: ArithmeticExpression) -> Int {
        switch expression {
        case let .number(value):
            print("111111111")
            return value
        case let .addition(left, right):
            print("2222222222")
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            print("33333333333")
            return evaluate(left) * evaluate(right)
        }
    }

    
    
    
    

}
