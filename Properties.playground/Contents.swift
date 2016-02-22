//: Playground - noun: a place where people can play

import UIKit


class Circle {
    
    var radius: Double
    
    var diameter: Double {
        get {
            return radius * 2
        }
        
        set(newValue) {
            
            print(newValue)
            self.radius = newValue / 2
        }
    }
    
    var circumference: Double {
        return 2.0 * 3.14 * self.radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

// NEW CODE
let c = Circle(radius: 4)

print(c.radius)
c.radius = 10

print(c.diameter)
c.diameter = 18

print(c.circumference)
//c.circumference = 56.52


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
        
        // or 
        // If a computed property’s setter does not define a name for the new value to be set, a default name of newValue is used.
        
        
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center

//set Center accepts Point() object
square.center = Point(x: 15.0, y: 15.0)



struct Cpu{
    
    var ghz: Double = 0.0
    
    mutating func overClock(overClockRate: Double){
        print(self.ghz)
        self.ghz = self.ghz * overClockRate
    }
}

struct Ram{
    var gb = 0
}


class Phone{
    
    var model: String
    var ram: Ram
    var cpu: Cpu {
        willSet(newCpu){
            print("cpu new property: \(newCpu)")
        }
    }
    
    init(model: String, cpu: Cpu, ram: Ram){
        self.model = model
        self.ram = ram
        self.cpu = cpu
    }
    
    var processor: Double{
        get{
            let speed = (self.cpu.ghz + Double(self.ram.gb)) * 2
            return speed
        }
    }
    
    static func name() -> String{
        return "name of phone"
    }
    
}

let iphone = Phone(model:"iPhone", cpu: Cpu(ghz:4.0), ram: Ram(gb: 4))

print("iPhone Processor is: \(iphone.processor)")


let galaxyS = Phone(model:"galaxyS", cpu: Cpu(ghz: 8.0), ram: Ram(gb: 3))

galaxyS.cpu = Cpu(ghz: 8.0)

galaxyS.cpu.overClock(2.0)

print("Galaxy S Processor is: \(galaxyS.processor)")


print(Phone.name())

