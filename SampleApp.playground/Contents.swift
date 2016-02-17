import UIKit

let http404Error = (404, "Not Found", "alvin")

let (statusCode, statusMessage, name) = http404Error

print("The status Code is \(statusCode)")

let (_,_,justName) = http404Error

print("Hello my name is \(justName)")


var sampleNil: String? = "yes"

sampleNil = nil


let canBeNil : Int! = 4



print(canBeNil)