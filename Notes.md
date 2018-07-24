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

3. 07/19/2018
    1. XCode
        1. start a new project
            1. Single View App
                1. main.swift AppDelegate.swift
                2. main story and View control
                    1. click and drag button
                    2. Interface Builder
                        1. connect outlets
                        2. constraints

4. 07/20/2018
    1. break point
        1. click the line number
    2. framework
        1. OpenStep
            1. Foundation
            2. AppKit
            3. Cocoa Touch
            4. Core Data
    3. Programming Paradigms
        1. Functional Programming
            1. done w/ expression, not statement
            2. avoid state changes and mutable data
            3. output solely depends on its argument
            4. ex: lambda, logic programming, Scheme
        2. Imperative Programming
            1. change a program state
            2. ex: FORTRAN, Basic
        3. Procedural Programming
            1. routines/functions
            2. modularizing
            3. scoping
                1. global
                2. local
            4. communication btwn procedures via parameters
        4. Structured Programming
            1. focused on making programs easier to write, debug and understand
            2. proliferation of subprograms, block structures
        5. Declarative
            1. defines computational logic without defining its control flow
            2. ex: Prolog, SQL
        6. OOP
            1. organize programs as objects, data structures with attributes and methods together with their interactions
        7. Automata-Based Programming
            1. part of a program is treated as a model of a finite state machine or similar formal automation
        8. Event-Driven Programming
            1. control flow is determined by events
        9. Software Architectural Patterns
            1.  reusable approaches or solutions to problems in software design that show up frequently
            2.  Model View Controller
                1.  architectural patterns for implementing user interfaces
                2.  event driven
                3.  three interconnected parts in order to separate internal structures from the way they're presented to the users
                    1.  Model
                        1.  consists of objects that encapsulate the data specific to the app
                        2.  defines logic and computations that manipulate and process that data
                    2.  View
                        1.  any object that users can see
                        2.  to display data from the model and enable editing of that data
                        3.  view objects know how to draw themselves and can respond to user actions
                        4.  provide consistency btwn apps
                        5.  multiple views of the same info is possible
                    3. Controller
                        1. intermediary btwn view objects and model objects
                        2. accept input and converts it to commands fro the model or view
                        3. can perform setup and coordinating task for an app and manage the life cycles of objects
                            1. model
                                1. tells the view to change the presentation when there is change in model
                                2. tells the controller when there has been a state change, causing the controller to changes the type of commands available
                            2. View
                                1. request info from the model that it uses to generate output to users
                            3. controller
                                1. interprets user actions made in views and communicate w/ the model to update the model
                                2. when model changes, reflect changes to the view's presentation
                        4. users never directly interact w/ the users

5. 07/23/2018
    1. View Controller
        1. coordinate communication btwn data and view components
        2. derives from UIViewController class
        3. every app has at least one
        4. Content VC vs. Container VC
            1. Content VC
                1. present content on the screen using a view or a group views organization into a view hierarchy
            2. Container VC
                1. contain content owned by other VCs that are explicitly assigned to the container VC as its children
                2. establishes a view controller hierarchy
        5. Table View Controller
            1. in tabular form
            2. table cell
            3. can display in distinct grouping
            4. can allow selection of one or more entries
            5. opt: disclose indicator, indexed list of items
        6. Navigation View Controller
            1. navigate btwn VCs
        7. Page View Controller
            1. single view to display content
            2. dots or swipe to turn page
            3. container controller
                1. each page managed by own VC
            4. tab view controller
                1. a row of tabs at the bottom of the screen
                2. container controller
    2. Protocol
        1. declaration of a group of related properties, initializers, and methods that provide a desired task or level of functionality
        2. kind of like interface
        3. adopt/confirm protocol
        4. Protocol <ProtocolName> {...}
        5. class ClassName: Protocol1, Protocol2 {...}
        6. class ClassName: MySuperClass, Protocol1 {...} // super class must listed before protocol
        7. some parts are required some parts are optional
        8. CustomStringConvertible
            1. description()
                1. allow to print object
                2. ex: `var description: String {`
                       `return width`
                       `}`
        9. fake multiple inheritance
    3.  Delegate
        1.  one objects acts on behalf of or in coordination with another object
        2.  pointer to some objects that has implemented the protocol's methods
        3.  delegating object keeps a reference to another object (the delegate) and at the appropriate time, sends a message to it
        4.  ex: child refer purchase to mother
    4. Segue
        1. named transition btwn one part of UI to another (move from one VC to another)

6. 07/24/2018
    1. 