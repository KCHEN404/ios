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

2. 07/18/2018
    1. Flow Control
        1. logical
            1. &&
            2. ||
            3. !
        2. relational
        3. >
        4. <
        5. >=
        6. <=
        7. !=
        8. ==
    2. iterable object / loop
        1. `let names = ["A","B","C","D"]`
           `for name in names {`
           `print("Hello, \(name)!")`
           `}`
        2. `while index < 0 {`
           `print("count is \(index)"`
           `index += 1`
           `}`
        3. `repeat {...}`
           `while (index <5)`
    3. class
        1. one class per file (convention)
        2. `func descrption() -> String {` // a func that        returns a string
           `return "First \(firstName) Last \(lastName)"`
           `}`
        3. `var newP = Person(first:"H",last:"S")` // must indicate argument label
        4. static func printHello() {}
            1. static is class method, not instance needed
            2. `Person.printHello()`
            3. `print(newP.description())`
            4. cannot be overridden
        5. class func
            1. can be overridden
            2. class func createOne (first:String, last:String)->Person{...}
            3. var np2 = Person.createOne(first:"L", last:"S")
    4. functions
        1. keyword func
            1. static / class optional
        2. func <funcName> (<argList>) -> <returnType> {code}
            1. `func example (name:String) {`
               `print("my name is \(name)")`
               `}`
               `example(name:"Bill")`
        3. argument label
            1. `func printName(fn fir:String, ln las:String) {`
               `print("\(las), \(fir)")`
               `}`
            2. `printName(fn:"H",ln:"G")`
                1.  fn is external name, fir is internal name
            3. `func printName( _ fir:String, _ las:String) {`
               `print("\(las), \(fir)")`
               `}`
            4. `printName("H", "G")`
                1. _ as a place holder
            5. `func printName(fn fir:String, ln las:String = "W") {` // give a default value if no value if passed in
               `print("\(las), \(fir)")`
               `}`
            6. `printName(fn:"H", ln:"G")`
               `func retG (pName:String) -> String {`
               `let newG = "Hello, " + pName + "!"`
               `return newG`
               `}`
            7. `print(retG(pName:"Ron"))`
            8. func minMax(...) -> (min:Int, max:Int) {...}
            