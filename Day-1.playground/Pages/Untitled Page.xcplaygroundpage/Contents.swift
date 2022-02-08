import UIKit

// This is a variable
var greeting = "Hello, playground"
print(greeting)
greeting = "Help"
print(greeting)

let petName = "Dobby"
let whatIsAString = "A variable or constant that is assigned text"

/**
 This is an incorrect string
 let incorrect = "Hello "workd""

 in order to use double quotes inside a string. Escape them with \
 */

// This is a correct string

let correct = "Hello \"world\""

let emoji = "🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟"

let multiLineString = """
Here is a multi line string
Notice the opening triple \" and
the closing triple \"
"""

print(multiLineString.count)

// NUMBERS

let score = 100 // This is an Int since it's a whole number

let bigNumber = 100_000_000_000
print(bigNumber == 100000000000) // Should print true

var doubleScore = 10
doubleScore *= 100 // this can be done with most operators

let number = 120
print(number.isMultiple(of: 6))

