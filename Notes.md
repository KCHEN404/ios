# CS371L IOS Computing
1. 07/17/2018
    1. import UIKit
        1. UI interface
    2. for loop
        1. `for i in 1...8 {}`
            1. i from 1 to 8
        2. `for i in 1..<n+1 {}`
            1. i from 1 to the number that is less than n+1
        3. when i is not used, can replace it with "_" to save symbol
    3. swift is event-driven programming
    4. variable
        1. var in swift is strong type
            1. must have a type, either explicitly or implicitly
                1. `var name:type`
                2. `var name = "an instance here"`
                3. `var name:type = "an instance here"`
        2. var vs. let
            1. var is mutable
            2. let is immutable
    5. Basic Types in Swift
        1. Int or UInt
            1. from Int8 to Int64
        2. Float
        3. Double
        4. String
        5. Bool
        6. Tuples
        7. Character
    6. Named Type vs. Compound Type
        1. Named type
            1. a type that can be given a particular name when it’s defined
            2. ex: data type, class
        2. Compound type
            1. a type without a name, defined in the Swift language itself
            2. function types
            3. tuple types
    7. Type Alias
        1. `typealias presType = (String, String)`
           `var president:presType = ("K","J")`
    8. Class
        1. init function has to initialize all stored properties
    9. Printing
        1.  inline
            1.  `print("Last name of the actor is \(actor.lastName) and the SSN Number is \(actor.SSN)")`
        2.  tuples printing
            1.  `print(myTuple.0)`
            2.  give names for elements in tuples
                1.  `myT = (a:"A", ("b","c"))`
                    1.  `print(myT.a)`
                    2.  `print(myT.1.0)`
    10. Arrays
        1.  `var tm = [Int]()` // initializer syntax
        2.  `var tm:[Int] = []` //cannot be null when appending
        3.  `tm = [1,2,3]`
        4.  `tm.append(4)`
    11. Tuples
        1.  can contain different data types