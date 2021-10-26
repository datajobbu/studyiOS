// FLOW CONTROL
import UIKit
import Foundation

// --- while
var i = 0
while i < 10 {
    print(i)
    i += 1
}

var j = 0
while j < 10 {
    print(j)
    
    if j == 5 {
        break
    }
    
    j += 1
}

var k = 0
repeat {
    print(k)
    k += 1
} while k < 10


// -- swift range
let closedRange = 0...10
let halfClosedRange = 0..<10

// -- for loop
var sum = 0
for i in closedRange {
    print("--> \(i)")
    sum += i
}
print("--> sum: \(sum)")

var sum2 = 0
for i in halfClosedRange {
    print("--> \(i)")
    sum2 += i
}
print("--> sum: \(sum2)")

var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Jason"
for _ in closedRange {
    print("--> \(name)")
}

for i in closedRange {
    if i % 2 == 0 {
        print("짝수: \(i)")
    }
}

for i in closedRange where i % 2 == 0 { print("--\(i)") }

for i in closedRange where i != 3 { print("--\(i)") }

for i in closedRange {
    if i == 3{
        continue
    }
    
    print("짝수: \(i)")
}

for i in closedRange {
    for j in closedRange {
        print("gugu - \(i) * \(j) = \(i * j)")
    }
}

// switch
let num = 10

switch num {
case 0:
    print("0")
case 10:
    print("10")
default:
    print("something")
}

let num2 = 5

switch num2 {
case 0:
    print("0")
case 1...5:
    print("1~5")
case 6...10:
    print("6~10")
default:
    print("something")
}

let pet = "bird"

switch pet {
case "dog", "cat":
    print("dog cat")
default:
    print("other")
}

let num3 = 20
switch num3 {
case _ where num % 2 == 0:
    print("even")
default:
    print("odd")
}

let coordinate = (x: 0, y: 10)
switch coordinate {
case (0, 0):
    print("O")
case (_, 0):
    print("axes x")
case (0, _):
    print("axes y")
default:
    print("somewhere")
}

let coordinate2 = (x: 10, y: 10)
switch coordinate2 {
case (0, 0):
    print("O")
case (let x, 0):
    print("axes x: \(x)")
case (0, let y):
    print("axes y: \(y)")
case (let x, let y) where x == y:
    print("somewhere same - \(x), \(y)")
case (let x, let y):
    print("somewhere - \(x), \(y)")
}


