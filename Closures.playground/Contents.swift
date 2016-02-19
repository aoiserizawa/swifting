//: Playground - noun: a place where people can play

import UIKit

// In Swift, as in many modern languages, functions are referred to as “first-class objects”. You can assign functions to variables, and you can pass them in and out of other functions, to be called later.

// 1. Functions can be assigned to variables and passed in and out of other functions as arguments, just as an Int or a



func doubler(i: Int) -> Int{ return i * 2}

let a = [1, 2, 3, 4].map(doubler)


for num in a{
    print(num)
}

// 2. Functions can “capture” variables that exist in the context they were declared

// This is a function that returns another function.
// That other function takes an Int and returns nothing.
func returnFunc() -> (Int) -> (){
    
    func innerFunction(i: Int){
        
        print("this function returns nothin but accepts Integer in parameters: \(i)")
    }
    
    return innerFunction
}


let f = returnFunc()

f(3)


// 3. The { } syntax for closure expressions
//In Swift, you can declare functions in two ways. One is with the func keyword demonstrated above. The other way is to use a “closure expression”.

let trippler = {(i: Int) -> Int in return i*3 }
[1, 2, 3].map(trippler)

// Why is the { } syntax useful then? Why not just use func every time? Well, it can be a lot more compact, especially when writing quick functions to pass into other functions such as map. Here is our trippler map example written in a much shorter form:

let triplerValue = [1, 2, 1].map { $0 * 3 }

// Enums

enum Movement: Int {
    case Left = 0
    case Right = 1
    case Top = 2
    case Bottom = 3
}

let rightMovement = Movement(rawValue: 1)


