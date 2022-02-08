# 100DaysOfSwiftUI
100 Days of SwiftUI log

## Table of Contents

- [Day 1: variables, constants, strings, and numbers](#day-1)

## Day 1

Variables store values and can be changed multiple times
`var` is used to declare variables

Constants store values and cannot be changed after the initial assignment 
`let` is used to declare constants

Strings are enclosed with `"`
Example of multiline string

```swift
let multiLineString = """
Here is a multi line string
Notice the opening triple \" and
the closing triple \"
"""
```

Useful functions for Strings
`.hasPrefix()` checks to see if the string begins with the passed in arg
`.hasSuffix()` checks to see if the string ends with the passed in arg

To use variables inside strings use `\(variable name)`

```swift
let age = 32
let taylorSwift = "Taylor Swift is \(age)"
```

Whole numbers are called `Ints`

To separte whole numbers consider using `_` these will be ignored in Swift so

`100_000_000` = `100000000`

If using shortcut operators you must declare and initialize before using them.

```swift
var doubleCount += 5 // this will throw an error
```

```swift
var doubleCount = 0 
doubleCount += 5 // this will not fail
```

Decimal Numbers are called Doubles

number types can be changed to another number type but a string cannot change into a number type.