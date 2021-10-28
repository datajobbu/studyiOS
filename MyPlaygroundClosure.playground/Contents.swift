// closure
import UIKit

// var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
// var multiplyClosure: (Int, Int) -> Int = { a, b in
//     return a * b
var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }
let result = multiplyClosure(4, 3)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}
operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}

let voidClosure: () -> Void = {
    print("iOS, I love closure")
}
voidClosure()


// Capturing Value
var count = 0

let incrementer = {
    count += 1
}
incrementer()
incrementer()
incrementer()
count

