import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers.filter { i in
    if i.isMultiple(of: 2) {
        return false
    }
    return true
}.sorted{ $0 < $1 }.map { j -> Void in
    print("\(j) is a lucky number")
}
