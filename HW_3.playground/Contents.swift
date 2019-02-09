import Cocoa
import Foundation

enum doorstate {
    case opened
    case closed
}

struct Car {
    var brand : String
    var year : Int
    var trunk : Double
    var door : doorstate
    var trunkVused : Double
    var isEngine : Bool
    var isWindows : Bool
    
    var info : String {
        get {
            return brand + " " + (String(year))
        }
    }
    mutating func OpenCloseDoorCar (state : doorstate) {
        switch state {
        case .opened:
            print ("Дверь открывается")
        case .closed:
            print("Дверь закрывается")
        }
    }
    
    mutating func turnOnOffEngine () {
        isEngine = !isEngine
    }
    
    mutating func OpenCloseWindow () {
        isWindows = !isWindows
    }
    
    mutating func UsedVTrunkChange () {
        trunkVused = 100
    }
}


struct Truck {
    var brand : String
    var year : Int
    var trunk : Double
    var door : doorstate
    var trunkVused : Double
    var isEngine : Bool
    var isWindows : Bool
    
    mutating func turnOnOffEngine () {
        isEngine = !isEngine
    }
    
    mutating func OpenCloseWindow () {
        isWindows = !isWindows
    }
    
    mutating func UsedVTrunkChange() {
    trunkVused = 100
    }
    
}


var car1 = Car (brand: "BMW", year: 2012, trunk: 550.0, door: .opened, trunkVused: 200.0, isEngine: true, isWindows: true)
var car2 = Car (brand: "KIA", year: 2015, trunk: 250.0, door: .opened, trunkVused: 200.0, isEngine: false, isWindows: true)
print(car1.info)


var truck1 = Truck (brand: "MAZ", year: 2012, trunk: 2550.0, door: .closed, trunkVused: 2000.0, isEngine: true, isWindows: false)
var truck2 = Truck (brand: "KAMAZ", year: 2015, trunk: 2250.0, door: .opened, trunkVused: 2000.0, isEngine: false, isWindows: false)

car1.OpenCloseDoorCar(state: .closed)
car1.OpenCloseWindow()
truck2.UsedVTrunkChange()

print(car1.isWindows)
print(truck2.trunkVused)


