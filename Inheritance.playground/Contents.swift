//: Playground - noun: a place where people can play

import UIKit

class BodyPart{
    var name:String = "BodyParts"
    
    func printName(){
        print(name)
    }
    
    func returnInteger(parameter:Int) -> Int{
        return 5 * parameter
    }
    
    var type:String{
        return "generic body part"
    }
    
    func printType(){
        print("My \(name) is a \(type)")
    }
}

var bodyPart = BodyPart()

bodyPart.printName()

class Hand: BodyPart {
    var numberOfFingers = 5
    
    // Overriding a method
    override func printName() {
        super.printName()
        print("subclass")
    }
    // Overriding a method
    override func returnInteger(parameter:Int) -> Int {
        var newValue = super.returnInteger(parameter)
        return newValue * parameter
    }
    
    override var type:String{
        get {
            return "Limb"
        }
    }
    
}

var hand = Hand()
hand.name = "Hand"
hand.printName()


print(hand.returnInteger(5))
hand.printType()

