import UIKit

//Tuples
let http404Error = (404, "Not Found", "alvin")

let (statusCode, statusMessage, name) = http404Error

print("The status Code is \(statusCode)")

let (_,_,justName) = http404Error

print("Hello my name is \(justName)")


var sampleNil: String? = "yes"

sampleNil = nil


let canBeNil : Int! = 4



print(canBeNil)


var shopingList = ["egg", "flour", "honey"]


shopingList[1...2] = ["strawberry", "chocolate"]

for item in shopingList{
    print(item)
}

//Dictionary 

var airports = [String: String]()


airports["PHZ"] = "Philippines"
airports["CHZ"] = nil
airports["NZZ"] = "New Zealand"


for(airportCode, airportName) in airports{
    
    print("\(airportCode) is \(airportName)")
}


var oldValue = airports.updateValue("Chinese" , forKey: "CHZ")

print(oldValue)