import Foundation
import Darwin

enum MathError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ num: Int) throws -> Int {
    if num < 1 && num > 10_000 {
        throw MathError.outOfBounds
    }

    for i in 1...num {
        if i * i == num {
            return i
        }
    }

    throw MathError.noRoot
}

do {
    let result = try squareRoot(100)
    print("SQUARE ROOT \(result)")
} catch MathError.noRoot {
    print("The square root was not found")
} catch MathError.outOfBounds {
    print("Number is out of bounds")
}
