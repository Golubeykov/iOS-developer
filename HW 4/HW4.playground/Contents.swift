import Cocoa
import Foundation

enum DoorState {
    case open, close
}

enum Transmission {
    case manual, auto
}

enum Hatch {
    case open, close
}

enum TrunkOperation {
    case load, unload
}

class Car {
    let color: String
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: DoorState
    var trunk : Double
    var trunkCapacity : Double
    func carsound () {
        print("Car sound")
    }
    func TrunkChange(operation : TrunkOperation, cargo: Double) -> Bool {
        switch operation {
        case .load:
            if (self.trunkCapacity < (self.trunk + cargo)) == false {
                self.trunk = self.trunk + cargo
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
                return true
            }
        }

    }
    
    init(color: String, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, trunk : Double, trunkCapacity : Double) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        self.trunk = trunk
        self.trunkCapacity = trunkCapacity
    }
}

class SportCar: Car {
    var hatch : Hatch
    init (color: String, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, hatch : Hatch, trunk : Double, trunkCapacity : Double) {
        self.hatch = hatch
        super.init(color: color, mp3: mp3, transmission: transmission, km: km, doorState: doorState, trunk: trunk, trunkCapacity: trunkCapacity)
    }
    override func carsound() {
        print("Pfff")
    }
}

class AvtoVAZ: Car {
    var PutinInside : Bool
    var WorkingEngine : Bool
    init(color: String, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, PutinInside : Bool, WorkingEngine : Bool, trunk : Double, trunkCapacity : Double) {
        self.PutinInside = PutinInside
        self.WorkingEngine = WorkingEngine
        super.init(color: color, mp3: mp3, transmission: transmission, km: km, doorState: doorState, trunk: trunk, trunkCapacity: trunkCapacity)
    }
    override func carsound() {
        print("Rrrr")
    }
}

var porsche : SportCar = SportCar (color: "Red", mp3: true, transmission: .auto, km: 1000, doorState: .close, hatch: .open, trunk: 10, trunkCapacity: 400)

var ladaKalina : AvtoVAZ = AvtoVAZ (color: "yellow", mp3: false, transmission: .manual, km: 4000, doorState: .open, PutinInside: true, WorkingEngine: false, trunk: 300, trunkCapacity: 600)

ladaKalina.TrunkChange(operation: .load, cargo: 200)
print("Текущая загруженность багажника", (ladaKalina.trunk))

ladaKalina.carsound()
porsche.carsound()

//Функцию убрать / добавить Путина из машины не стал писать :))
