import UIKit
import Foundation

enum CarError: Error {
    case gearTooHigh, gearTooLow
}

struct Car: CustomStringConvertible {
    let model: String
    var seats: Int
    var currentGear: Int
    var description: String {
        return "\(self.model)"
    }

    mutating func changeGear(amt: Int) throws {
        let possibleChange = currentGear + amt
        if possibleChange > 0 && possibleChange <= 10  {
            currentGear = possibleChange
        } else if possibleChange < 0 {
            throw CarError.gearTooLow
        } else {
            throw CarError.gearTooHigh
        }
    }
}

var capt = Car(model: "Jeep", seats: 5, currentGear: 0)
do {
    try capt.changeGear(amt: -1)
    print(capt.currentGear)
} catch CarError.gearTooLow {
    print("Gear is to low")
} catch CarError.gearTooHigh {
    print("Gear is too high")
}

do {
    try capt.changeGear(amt: 1)
    print(capt.currentGear)
} catch CarError.gearTooLow {
    print("Gear is to low")
} catch CarError.gearTooHigh {
    print("Gear is too high")
}

do {
    print(capt.description)
    try capt.changeGear(amt: 11)
    print(capt.currentGear)
} catch CarError.gearTooLow {
    print("Gear is to low")
} catch CarError.gearTooHigh {
    print("Gear is too high")
}

