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

6. 07/25/2018
    1. Alert views
        1. UIAlertController
            1. style
                1. trust & not trust
                2. action sheet
        2. UIAlertAction
            1. title
            2. style
                1. default
                2. cancel
                3. destructive
            3. handler

7. 07/26/2018
    1. optional variable (?)
        1. "a label on the box"
        2. never answer the question vs. answer was empty
        3. wrapper
            1. optional(value)
            2. forced unwrap (!)
            3. `if x != nil {`
                  `print(x!)`
               `}`
    2. optional binding
        1. `if let t = tens, let u = ones {`
           `let tenTimes = 10*t + u`
           `}`
        2. `let result = x != nil ? x! : 999`
        3. `let result = x ?? 999` // nil coalescing -> if x has value, use it, otherwise use 999
    3. implicitly unwrapped optionals
    4. take function as argument
        1. `func myCompare(...) {...}`
           `print(myArray.sorted(by:myCompare))`
        2. closure
            1. "in-line code" or "unnamed function definition"
            2. `print(myArray.sorted(by: {(func arguments)->Bool in {func body}}))`
            3. `print(myArray.sorted(by: {(func arguments) in {func body}}))` // if there is only one line of code in func body
            4. `print(myArray.sorted(by: {$0[0] > $1[0]}))` // $0 -> arg 0, $1 -> arg 1
    5. func args
        1. `func listSum(values:Int...)`
        2. `print(listSum(values: 1,2,3,4,5,6,7))` // any number of int

8. 07/27/2018
    1. named vs compound
        1. named
            1. primitives
            2. user class
            3. protocols
            4. structures
            5. arrays
        2. compound
            1. tuples
            2. functions
    2. scoping
        1. module
            1. single unit of code distribution
                1. ex: hw1
            2. framework of app that is built and shipped as a single unit and can be imported by another module using import keyword
        2. source file
            1. single swift source code file within module
            2. can contain definitions for multiple types, functions
    3. access levels
        1. public
        2. internal
            1. used within any source file from their defining module
        3. private
            1. only inits own defining source file
    4. segmented controls
        1. display a list of options that a user can choose from
        2. look like and behave like a radio button
        3. remain "pressed" even after the user selects the control
        4. do not have to be the same type, text and images can be mixed
    5. popover controller
        1. special controller class that is used to manage the presentation of content in a popover
        2. present information temporary, similar to alert
        3. display over current content, with current content grayed out
        4. remain visible until user taps outside of it, or select something in the popover
        5. UIPopoverPresentationController
        6. use a nav controller when on a small device

9. 07/30/2018
    1.  CocoaPods
        1.  a dependency manager
        2.  `sudo gem install cocoapods`
        3.  `pod setup --verbose`
    2. Firebase
        1. BaaS
            1. backend as a service
            2. real time database
            3. access through web socket
            4. faster than http
            5. file storage
            6. authentication
            7. hosting
            8. analytics
            9. cloud messaging
            10. other google products
    3. weak vs strong reference
    4. guard else

10. 07/31/2018
    1.  user defaults
        1. key/value pair with persistence
        2. for small amounts of data < 100KB
        3.  NSUserDefaults
          `let defaults = NSUserDefaults.standard`
          `defaults.set(<value>, forKey: <keyname>)`
        4. bool, int, float, double user defaults do not return optional
    2. core data
        1. large amount of data > 100KB
        2. Managed Object Model
        3. Managed Object Context
            1. interact with context, not directly w/ database itself
        4. Core data architecture
            1. entity (treated like a class)
            2. attributes
                1. a piece of info attached to a particular entity
            3. relationship
                1. connections btwn entities
    3. lazy
        1. do not create until needed (create when need to use it)

11. 08/01/2018
    1.  stack view
    2.  frame and bounds

12.  Multithreading
    1. task
        1. can see variables and values from its enclosing scope(calling function)
    2. serial vs concurrency
    3. concurrency vs parallelism
    4. synchronous vs asynchronous
        1. synchronous return until task finishes
        2. asynchronous return immediately, w/out waiting the task to be completed
        3. asynchronous function call does not block current thread of execution from proceeding
    5. critical section
        1. must not be executed concurrently
    6. race condition
    7. deadlock
    8. thread safe
    9. GCD
        1.  import Foundation
        2.  serial queues
        3.  concurrent queues
        4.  main dispatch queue
            1. serial
            2. only execute one task at a time
            3. the UI can be blocked when you run a heavy task in the main queue
        5.  global dispatch queue
        6.  Quality of Service
            1.  priority of queues
                1. userInteractive
                    1. need to be done immediately for good experience
                    2. small amount of work with low latency
                2. userInitiated
                    1. For tasks that are initiated from the UI and can be performed asynchronously
                3. default
                4. utility
                    1. long-running tasks, typically with a user-visible progress indicator
                5. background
                6. unspecified
        7. create a global queue
            1. `let queue = DispatchQueue.global()`
        8. Create a custom queue named <name>:
            1. `let queue = DispatchQueue(label: <name>, qos: .userInitiated)`
        9. method to use to initiate tasks
            1.  `queueName.sync {<task>}`
            2.  `queueName.async {<task>}`

13. 08/03/2018
    1.  Notification
        1. Basic
            1. Key Value Observing
                1. work w/ class inherits from NSObject
                2. observer for property you want to monitor
                3. have `@objc dynamic` in front of the property bc KVO is implemented in Objective C
                4. observer
                    1. keypath
                        1. `\class.property`
                    2. options
                        1. .new
                        2. .old
                        3. initial
                        4. prior
                    3. closure
                    4. `class Person: NSObject {@objc dynamic var name = "TS"}`
                    5. `let taylor = Person()`
                    6. `taylor.observe(\Person.name, options: .new) {person, change in print ("My name is \(person.name)")}`
        2. Remote
            1. sent by APNS
        3. Scheduled local
        4. User notification 
14. 08/06/2018
    1.  animation
        1.  frame
        2.  bounds
        3.  center
        4. transform
        5. alpha
        6. background color
        7. content stretch