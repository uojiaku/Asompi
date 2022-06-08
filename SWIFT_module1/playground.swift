
func Boo() {
    print("hello")
    let hi = UInt8.max
    let toro: Double
    toro = 5
    print(type(of: hi))
    print(hi)
    print(toro)
}
Boo()

func BuildBurger() {
    print("build it")
}
func MakeBurger() throws {
    print("not found boi!")
}

do {
    try MakeBurger();
    BuildBurger();
}


 // nested functions
 
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -10
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")



 // 
 /*
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames)
 */
 
// Omitting Argument Values
func greet( _ person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet("Bill", from: "Cupertino"))


// inout Parameters
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var SomeA = 19
var someB = 20
    
print(swapTwoInts(&SomeA, &someB))
print(SomeA, someB)

func TwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var SomA = 19
var somB = 20
    
print(swapTwoInts(&SomeA, &someB))

// 


let completion: ((Bool) -> Void) = {value in
    print(value)
}

completion(true)


// void function is function w/o parameter
func htown() -> Void {
    print("wassup!")
}
htown()


// using function types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunc: ( Int, Int ) -> Int =  addTwoInts(_:_:)
// or var mathFunc: ( Int, Int ) -> Int = addTwoInts
// or var mathFunc = addTwoInts
print(mathFunc(3,4))
let anotherFunc = addTwoInts
print(anotherFunc(4,6))
 

// Closures
// Global and Nested functions are special cases of closures
// there are three kinds of closures:
// Global functions which have a name but don't capture any values
// Nested functions which have a name and capture values from their enclosing functions
// Closure expressions which are unnamed closures that capture values from their surrounding context 
// closure expressions have optimizations:
//   * inferring parameter and return values types from context
//   * implicit returns from single-expression closures
//   * shorthand argument names
//   * trailing closure syntax

// basic use of sorted method
var arr = [4,3,2]
var sortThis = arr.sorted()
print(sortThis)

 let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
 
 func backward(_ s1: String, _ s2: String) -> Bool {
 return s1 > s2
 }
 var reversedNames = names.sorted(by: backward)
 print(reversedNames)
 

//--- Closure Expression Syntax
/* { (parameters) -> return type in
 statements
}
*/
var closureExpression = names.sorted(by: {(s1: String, s2: String ) -> Bool in
    return s1 > s2
}) 
print(closureExpression)
 

//--- Inferring Type From Context - where Swift can infer the types of its parameters and the type of the value it returns.
    // so the types are omitted as well the -> return arrow and parentheses around the names.
var inferredType = names.sorted(by: { s1, s2 in return s1 > s2 })
print(inferredType)
 

//--- Implicit Returns from Single-Expression Closures - where you can omit the return keyword
var implicitReturns = names.sorted(by: { s1, s2 in s1 > s2 })
print(implicitReturns)
    // in this example the Bool value can be inferred because the closure's body contains a single expression (s1 > s2) that returns a Bool value.
 

//--- Shorthand Argument Names - where the in keyword can be omitted, $0 and $1 refer to the closure's 1st and 2nd arguments

var shorthandArgument = names.sorted(by: { $0 > $1 })
print(shorthandArgument)

    // there's a shorter way of writing the closure expression above
var operatorMethod = names.sorted(by: >)
print(operatorMethod)
 

//--- Trailing closures 
    // when you want to pass a closure expression to a function as the function's final argument and the closure expression is long, it might be better to write it as a trailing closure.

/*
{ (parameters) -> return type in
    statements
 }
 
var closureExpression = names.sorted(by: {(s1: String, s2: String ) -> Bool in
    return s1 > s2
}) 
print(closureExpression)
 */

func someFunc(closure: () -> Void) {
    // this is an example of a trailing closure
}

func otherFunc() {
    // this is an exmaple of a trailing closure
}

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
print(numbers);

let strings = numbers.map { (number) -> String in // dont need to specify number type because it is inferred by the values in numbers.
    // closures support functions, with this example the trailing closure encapsulates the functionality w/o the need to wrap the entire closure within the map(_:) method.
    var number = number 
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output // ! is used to force-unwrap the String value stored in the subscript's optional return value.
        number /= 10
    } while number > 0
    return output
}
print(strings)

    // if the function takes multiple closures, you omit the argument label for the first trailing closure & you label the remaining trailing closures
/*
func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void ) { // here the first argument label is omitted
    if let picture = download("photo.jpg", from: server ) {
        completion(picture)
    } else {
        onFailure()
    }
} 
*/
//---- Capturing Values

// A clousre can capture constant and variables from the surrounding context in which it's defined.

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
} 
var incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())
var incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven())
print(incrementBySeven())

//---- Closures are Reference Types
// whenever you assign a function or a closure to a constant or variable, you are actually setting that constant or variable to be a reference to the function or closure.
    // you can also assign a closure to two different constants or variables, both of those constants or variables refer to the same closure 
let alsoIncrementByTen = incrementByTen
print(alsoIncrementByTen())

//---- Escaping Closures
    // when the closure is passed as an argument to the function but is called after the function returns.
    // write @escaping before the parameter's type to indicate that the closure is allowed to escape.
    // 1. a way that a closure can escape is by it being stored in a variable that's defined outside the function 
    // a. mamy functions that start an asynchronous operation take a closure argument as a completion handler.
    // b. an escaping closure that refers to self needs special consideration if self refers to an instance of a class. Capturing self in an escaping closure makes it easy to accidentally create a strong reference cycle.
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
    // takes a closure as its argument and adds it to an array that's declared outside the function  
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 } // refers to self explicitly
        someFunctionWithNonescapingClosure { x = 200} // refers to self implicitly, because it is a nonescaping closure.
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)
    // writing self explicitly lets you express your intent, and reminds you to confirm that there isn't a reference cycle

class SomeOtherClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { [self] in x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
            // here the doSomething function captures the self by including it in the closure's capture list
    }
}


import Foundation
let today = Date()
let h = DateFormatter(), m = DateFormatter(), s = DateFormatter() 
    h.dateFormat = "HH"
m.dateFormat = "mm"
s.dateFormat = "ss"
/*let hour = h.string(from: today)
let min = m.string(from: today)
let sec = s.string(from: today)*/

let cal = Calendar.current
let hour = cal.component(.hour, from: today)
let min = cal.component(.minute, from: today)
//print(hour)

/*let onuogugu = [  0: "efu", 1: "otu", 2: "abụọ", 3: "atọ", 4: "anọ", 5: "ise", 6: "isi", 7: "asaa", 8: "asatọ", 9: "itoolu", 10: "iri",
                  11: "iri n\'otu", 12: "iri n\'abụọ", 13: "iri n\'atọ", 14: "iri n\'anọ", 15: "iri n\'ise", 16: "iri n\'isi", 17: "iri n\'asaa",
                  18: "iri n\'asatọ", 19: "iri n\'itoolu", 20: "iri abụọ", 21: "iri abụọ n\'otu", 22: "iri abụọ n\'abụọ", 23: "iri abụọ n\'atọ",
                  24: "iri abụọ n\'anọ", 25: "iri abụọ n\'ise", 26: "iri abụọ n\'isi", 27: "iri abụọ n\'asaa", 28: "iri abụọ n\'asatọ", 29: "iri abụọ n\'itoolu",
                  30: "iri atọ", 31: "iri atọ n\'otu", 32: "iri atọ n\'abụọ", 33: "iri atọ n\'atọ", 34: "iri atọ n\'anọ", 35: "iri atọ n\'ise", 36: "iri atọ n\'isi",
                  37: "iri atọ n\'asaa", 38: "iri atọ n\'asatọ", 39: "iri atọ n\'itoolu", 40: "iri anọ", 41: "iri anọ n\'otu", 42: "iri anọ n\'abụọ", 43: "iri anọ n\'atọ",
                  44: "iri anọ n\'anọ", 45: "iri anọ n\'ise", 46: "iri anọ n\'isi", 47: "iri anọ n\'asaa", 48: "iri anọ n\'asatọ", 49: "iri anọ n\'itoolu",
                  50: "iri ise", 51: "iri ise n\'otu", 52: "iri ise n\'abụọ", 53: "iri ise n\'atọ", 54: "iri ise n\'anọ", 55: "iri ise n\'ise", 56: "iri ise n\'isi",
                  57: "iri ise n\'asaa", 58: "iri ise n\'asatọ", 59: "iri ise n\'itoolu", 60: "iri isi" ]

if (onuogugu[hour] != nil) {
var hs = onuogugu[hour] ?? "Default"
    print(hs)
}
if (onuogugu[min] != nil) {
    var mn = onuogugu[min] ?? "Default"
    print(mn)
    print(type(of: mn))
}

let shortForm: Int? = Int("42")
print((shortForm))

let short: Int = 42
print(short)
print(cal)
//print(onuogugu.values)*/
/*

func nwude() -> String {
    let onuogugu = [  0: "efu", 1: "otu", 2: "abụọ", 3: "atọ", 4: "anọ", 5: "ise", 6: "isi", 7: "asaa", 8: "asatọ", 9: "itoolu", 10: "iri",
                      11: "iri n\'otu", 12: "iri n\'abụọ", 13: "iri n\'atọ", 14: "iri n\'anọ", 15: "iri n\'ise", 16: "iri n\'isi", 17: "iri n\'asaa",
                      18: "iri n\'asatọ", 19: "iri n\'itoolu", 20: "iri abụọ", 21: "iri abụọ n\'otu", 22: "iri abụọ n\'abụọ", 23: "iri abụọ n\'atọ",
                      24: "iri abụọ n\'anọ", 25: "iri abụọ n\'ise", 26: "iri abụọ n\'isi", 27: "iri abụọ n\'asaa", 28: "iri abụọ n\'asatọ", 29: "iri abụọ n\'itoolu",
                      30: "iri atọ", 31: "iri atọ n\'otu", 32: "iri atọ n\'abụọ", 33: "iri atọ n\'atọ", 34: "iri atọ n\'anọ", 35: "iri atọ n\'ise", 36: "iri atọ n\'isi",
                      37: "iri atọ n\'asaa", 38: "iri atọ n\'asatọ", 39: "iri atọ n\'itoolu", 40: "iri anọ", 41: "iri anọ n\'otu", 42: "iri anọ n\'abụọ", 43: "iri anọ n\'atọ",
                      44: "iri anọ n\'anọ", 45: "iri anọ n\'ise", 46: "iri anọ n\'isi", 47: "iri anọ n\'asaa", 48: "iri anọ n\'asatọ", 49: "iri anọ n\'itoolu",
                      50: "iri ise", 51: "iri ise n\'otu", 52: "iri ise n\'abụọ", 53: "iri ise n\'atọ", 54: "iri ise n\'anọ", 55: "iri ise n\'ise", 56: "iri ise n\'isi",
                      57: "iri ise n\'asaa", 58: "iri ise n\'asatọ", 59: "iri ise n\'itoolu", 60: "iri isi"
    ]
    
    
    let today = Date()
    let cal = Calendar.current
    let t = cal.component(.hour, from: today)
    let m = cal.component(.minute, from: today)
    let s = cal.component(.second, from: today)
    var nkebokwu : String = " "
    var h : Int
    var nkeji1 : String = "today"
    var aka_elekere1 : String = "today"
    var timtim1 : String
    var ubochi1 : String
    
    if (t == 0) {
        h = 12
    } else if ( t == 12) {
        h = 12
    }
    else {
        h = cal.component(.hour, from: today) % 12
    }
    
    if (onuogugu[h] != nil) {
        aka_elekere1 = onuogugu[h] ?? "Default"
    }
    if (onuogugu[m] != nil) {
        nkeji1 = onuogugu[m] ?? "Default"
    }
    if (onuogugu[s] != nil) {
        timtim1 = onuogugu[s] ?? "Default"
    }
    
    // time of day
    if (t > 0 && t < 12) {
        ubochi1 = " nke ututu"
    } else if (t > 11 && t < 18) {
        ubochi1 = " nke ehihie"
    }
    else {
        ubochi1 = " nke abali"
    }
    
    // with min or not
    if (m == 0){
        //nkebokwu += "elekere " + aka_elekere + ubochi
        //progObj.initWithData(nkeji: nil , timtim: nil, gafe: nil, elekere: "elekere", aka_elekere: aka_elekere1, ubochi: ubochi1)
        nkebokwu += "Nkeji " + nkeji1 + " gafe" + " elekere " + aka_elekere1 + ubochi1
        
    }
    else {
        //"nkeji " + nkeji + " gafe" + " elekere"
        nkebokwu += "Nkeji " + nkeji1 + " gafe" + " elekere " + aka_elekere1 + ubochi1
        
    }
    return nkebokwu
}

//print(nwude())


class ProgramObject: NSObject {
    var nkeji : String?
    var timtim : String?
    var gafe : String?
    var elekere : String?
    var aka_elekere : String?
    var ubochi : String?
    
    
    func initWithData(nkeji: String, timtim: String, gafe: String, elekere: String, aka_elekere: String, ubochi: String){
        self.nkeji = nkeji
        self.timtim = timtim
        self.gafe = gafe
        self.elekere = elekere
        self.aka_elekere = aka_elekere
        self.ubochi = ubochi
    }
}


var programs : [ProgramObject] = [] // programs extends an array of ProgramObject and equals an array
func applicationDidFinishLaunching() {
    // Perform any final initialization of your application.
    
    // initialize data by creating an array of program objects & hard code the information we have.. but the from and to time will always be 90 minutes from now.
    let progObj = ProgramObject() // initializes
    func nwude0() {
        let onuogugu = [  0: "efu", 1: "otu", 2: "abụọ", 3: "atọ", 4: "anọ", 5: "ise", 6: "isi", 7: "asaa", 8: "asatọ", 9: "itoolu", 10: "iri",
                          11: "iri n\'otu", 12: "iri n\'abụọ", 13: "iri n\'atọ", 14: "iri n\'anọ", 15: "iri n\'ise", 16: "iri n\'isi", 17: "iri n\'asaa",
                          18: "iri n\'asatọ", 19: "iri n\'itoolu", 20: "iri abụọ", 21: "iri abụọ n\'otu", 22: "iri abụọ n\'abụọ", 23: "iri abụọ n\'atọ",
                          24: "iri abụọ n\'anọ", 25: "iri abụọ n\'ise", 26: "iri abụọ n\'isi", 27: "iri abụọ n\'asaa", 28: "iri abụọ n\'asatọ", 29: "iri abụọ n\'itoolu",
                          30: "iri atọ", 31: "iri atọ n\'otu", 32: "iri atọ n\'abụọ", 33: "iri atọ n\'atọ", 34: "iri atọ n\'anọ", 35: "iri atọ n\'ise", 36: "iri atọ n\'isi",
                          37: "iri atọ n\'asaa", 38: "iri atọ n\'asatọ", 39: "iri atọ n\'itoolu", 40: "iri anọ", 41: "iri anọ n\'otu", 42: "iri anọ n\'abụọ", 43: "iri anọ n\'atọ",
                          44: "iri anọ n\'anọ", 45: "iri anọ n\'ise", 46: "iri anọ n\'isi", 47: "iri anọ n\'asaa", 48: "iri anọ n\'asatọ", 49: "iri anọ n\'itoolu",
                          50: "iri ise", 51: "iri ise n\'otu", 52: "iri ise n\'abụọ", 53: "iri ise n\'atọ", 54: "iri ise n\'anọ", 55: "iri ise n\'ise", 56: "iri ise n\'isi",
                          57: "iri ise n\'asaa", 58: "iri ise n\'asatọ", 59: "iri ise n\'itoolu", 60: "iri isi"
        ]
        
        
        let today = Date()
        let cal = Calendar.current
        let t = cal.component(.hour, from: today)
        let m = cal.component(.minute, from: today)
        let s = cal.component(.second, from: today)
        var h : Int
        var nkeji1 : String = "today"
        var aka_elekere1 : String = "today"
        var timtim1 : String
        var ubochi1 : String
        
        if (t == 0) {
            h = 12
        } else if ( t == 12) {
            h = 12
        }
        else {
            h = cal.component(.hour, from: today) % 12
        }
        
        if (onuogugu[h] != nil) {
            aka_elekere1 = onuogugu[h] ?? "Default"
        }
        if (onuogugu[m] != nil) {
            nkeji1 = onuogugu[m] ?? "Default"
        }
        if (onuogugu[s] != nil) {
            timtim1 = onuogugu[s] ?? "Default"
        }
        
        // time of day
        if (t > 0 && t < 12) {
            ubochi1 = " nke ututu"
        } else if (t > 11 && t < 18) {
            ubochi1 = " nke ehihie"
        }
        else {
            ubochi1 = " nke abali"
        }
        
        // with min or not
        if (m == 0){
            //nkebokwu += "elekere " + aka_elekere + ubochi
            //progObj.initWithData(nkeji: nil , timtim: nil, gafe: nil, elekere: "elekere", aka_elekere: aka_elekere1, ubochi: ubochi1)
            progObj.initWithData(nkeji: "Nkeji ", timtim: nkeji1, gafe: " gafe", elekere: " elekere", aka_elekere: aka_elekere1, ubochi: ubochi1)
            
        }
        else {
            //"nkeji " + nkeji + " gafe" + " elekere"
            progObj.initWithData(nkeji: "Nkeji ", timtim: nkeji1, gafe: " gafe", elekere: " elekere", aka_elekere: aka_elekere1, ubochi: ubochi1)
            
        }
        programs.insert(progObj, at: 0)
    }
    
    print(nwude0())
}



var helloWorldTimer = NSTimer.scheduledTimerWithTimeInterval(60.0, target: self, selector: Selector("sayHello"), userInfo: nil, repeats: true)

func sayHello() 
{
    NSLog("hello World")
}




Timer.scheduledTimer(withTimeInterval: <#T##TimeInterval#>, repeats: <#T##Bool#>, block: <#T##(Timer) -> Void#>)

 */
//let result = getResult(passersby: [3, 10, 4, 18])
//
//
//func getResult(passersby: [Int]) -> Int {
//    
//    var victims = passersby
//    var profit = 0
//    
//    
//    for i in 0...(victims.enumerated().reversed()).count-1 {
//        
//        if victims.count > 0 && victims.count <= 10, victims[i] > 0 && victims[i] <= 1000{
//            
//            if victims[i] == victims.max() {
//                profit += victims[i]
//                victims.remove(at: i)
//            }
//            guard profit > victims.min()! && !victims.contains(victims.max()!) else { continue }
//            
//            profit -= victims[i != victims.endIndex ? i : victims.first!]
//            victims[i] *= 2
//            victims.remove(at: i)
//        }           
//    }      
//    
//    return profit
//}
//
//print(result)

class MarksStruct {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

class studentMarks {
    var mark = 300
}

let marks = studentMarks()
print("Mark is \(marks.mark)")

