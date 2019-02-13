import Cocoa

enum DoorState {
    case open, close
}

enum EngineState {
    case on, off
}

enum HatchState {
    case open, close
}

enum TrunkOperation {
    case load, unload
}

protocol Car {
    var engineState : Bool { get set } //инициализатор свойства
    var timePassed : Double { get set } // время, которое машина проехала (в часах)
    var speedCurrent : Double { get set } // скорость в км/ч
    var distancePassed : Double { get set } // расстояние, которое машина проехала (в км)
    var doorState: Bool { get set }

}
// set - запись переменной, get - чтение переменной
extension Car {
    mutating func openCloseDoor() {
        doorState = !doorState
    }
    mutating func startStopEngine() {
        engineState = !engineState
    }
    mutating func calculateDistance() {
        distancePassed = speedCurrent * timePassed
    }
    
}

class SportCar : Car {
    var engineState: Bool
    
    var timePassed: Double
    
    var speedCurrent: Double
    
    var distancePassed: Double
    
    var doorState: Bool
    
    var hatch : Bool
    
    func openCloseHatch() {
        return hatch = !hatch
    }
    
    init(engineState : Bool, timePassed : Double, speedCurrent : Double, distancePassed : Double, doorState: Bool, hatch: Bool) {
        self.hatch = hatch
        self.engineState = engineState
        self.timePassed = timePassed
        self.speedCurrent = speedCurrent
        self.distancePassed = distancePassed
        self.doorState = doorState
    }
}

class Truck : Car {
    var engineState: Bool
    
    var timePassed: Double
    
    var speedCurrent: Double
    
    var distancePassed: Double
    
    var doorState: Bool
    
    var trunk: Double
    
    var trunkCapacity : Double
    
    func TrunkChange(operation : TrunkOperation, cargo: Double) -> Bool {
        switch operation {
        case .load:
            if (self.trunkCapacity < (self.trunk + cargo)) == false {
                self.trunk = self.trunk + cargo
                print("Текущая загруженность кузова \(trunk) литров")
                return true
            } else {
                print("Нет места в багажнике")
                return false
            }
        case .unload:
            if ((trunk-cargo) < 0) == true {
                print("В багажнике меньше груза, чем вы пытаетесь выгрузить")
                return false
            } else {
                trunk = trunk - cargo
                print("Текущая загруженность кузова \(trunk) литров")
                return true
            }
        }
        
    }
    
    init(engineState : Bool, timePassed : Double, speedCurrent : Double, distancePassed : Double, doorState: Bool, trunk : Double, trunkCapacity : Double) {
        self.trunk = trunk
        self.trunkCapacity = trunkCapacity
        self.engineState = engineState
        self.timePassed = timePassed
        self.speedCurrent = speedCurrent
        self.distancePassed = timePassed * speedCurrent
        self.doorState = doorState
    }
}

extension SportCar : CustomStringConvertible {
    public var description: String {
        return "Текущая скорость \(speedCurrent) км/ч"
    }
    
}

extension Truck : CustomStringConvertible {
    public var description : String {
        return "Текущая загружженость кузова: \(trunk) литров"
    }
}

var Porsche : SportCar = SportCar (engineState: true, timePassed: 2, speedCurrent: 150, distancePassed: 300, doorState: false, hatch: true)
var Kamaz : Truck = Truck (engineState: true, timePassed: 3, speedCurrent: 90, distancePassed: 270, doorState: false, trunk: 2000, trunkCapacity: 3000)


Porsche.openCloseDoor()
Porsche.openCloseHatch()
Porsche.hatch
Porsche.doorState
Kamaz.TrunkChange(operation: .load, cargo: 500)
