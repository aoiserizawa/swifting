//: Playground - noun: a place where people can play

import UIKit


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode{
    
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()

let someVideoMode = VideoMode()

print("someResolution Width: \(someResolution.width)")

someVideoMode.resolution.width = 1024

print("someResolution Width: \(someVideoMode.resolution.width)")

// Unlike structures, class instances do not receive a default memberwise initializer
let vga = Resolution(width: 640, height: 480)

print("vga width: \(vga.width)")

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd

print(cinema.width)

// Classes are Reference Types
//  Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used instead

let tenEighty = VideoMode()

tenEighty.resolution = hd

tenEighty.interlaced = true

tenEighty.name = "1080i"

tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty

alsoTenEighty.frameRate = 30.0

print(tenEighty.frameRate)

//PROPERTIES

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

//Stored Properties of Constant Structure Instances

//If you create an instance of a structure and assign that instance to a constant, you cannot modify the instance’s properties, even if they were declared as variable properties:



let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

// rangeOfFourItems.firstValue = 1
// this will report an error, even though firstValue is a variable property


// Lazy Stored Properties

class DataImporter {
        var fileName = "data.txt"
}

class DataManager {
    
    lazy var importer = DataImporter()
    var data = [String]()
}


let manager = DataManager()

manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property has not yet been created

//Part of the functionality of the DataManager class is the ability to import data from a file. This functionality is provided by the DataImporter class, which is assumed to take a non-trivial amount of time to initialize. This might be because a DataImporter instance needs to open a file and read its contents into memory when the DataImporter instance is initialized.

// Because it is marked with the lazy modifier, the DataImporter instance for the importer property is only created when the importer property is first accessed, such as when its fileName property is queried:

print(manager.importer.fileName)


// Computed Properties

struct Point {
    
    var x = 0.0, y = 0.0
}

struct Size {
    
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    var center: Point{
        
        get{
            let centerX = origin.x + (size.width / 2)
            
            let centerY = origin.y + (size.height / 2)
            
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center

square.center = Point(x: 15.0, y: 15.0)

print("square.origin is now at (\(square.origin.x), \(square.origin.y))")


