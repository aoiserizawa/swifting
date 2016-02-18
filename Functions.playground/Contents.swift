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
