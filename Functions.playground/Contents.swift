//: Playground - noun: a place where people can play

import UIKit

enum ErrorInputName: ErrorType{
    case InsuficientCharacters
}

func getName(name: String) throws -> String{
    
    if name.characters.count > 3{
        return name
    }else
    {
        throw ErrorInputName.InsuficientCharacters
    }
}

var name : String

do{
    name = try getName("ju")
}catch ErrorInputName.InsuficientCharacters{
    name = "Error Name"
}

func getSum(nums: Int...)->Int{
    var sum: Int = 0
    
    for num in nums{
        sum+=num
    }
    return sum
}

print("Sum: \(getSum(1,2,3,4,5,6,7,8,9))")

var string1: String = "happy"
var string2: String = "sad"
var string3: String = "joy"

print(string1)

func makeUpperCase(str1: String, inout _ str2: String, inout _ str3: String){
    string1 = str1.uppercaseString
    string2 = str2.uppercaseString
    string3 = str3.uppercaseString
}

makeUpperCase(string1,&string2,&string3)

print(string1)

<<<<<<< HEAD

// Function Types as Return Types
func stepForward(input: Int) -> Int {
    return input+1
}

func stepBackward(input: Int) -> Int {
    return input-1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function

print(moveNearerToZero(7))


// Nested Function

func chooseStep(backwards: Bool) -> (Int) -> Int{
    func stepForward (input: Int) -> Int { return input + 1}
    func stepBackward (input: Int) -> Int { return input - 1 }
    
    return backwards ? stepBackward : stepForward
}




=======
func someFunction(firstParameterName: Int,sample: Int) -> Int{
    return firstParameterName + sample
}

// laging kasama ung name ng parameter except sa first parameter for readability purpose
someFunction(1,sample:2)

// Omitting External Parameter Names
// pag may underscore sa una ung other parameters except 1st parameter kahit wala na ung name
func someOtherFunction(first: String, _ second: String) -> String{
    return first+second
}

someOtherFunction("hello", "hi")
>>>>>>> 83e1f8ba051017c0917e09a4c3261875f01853a1
