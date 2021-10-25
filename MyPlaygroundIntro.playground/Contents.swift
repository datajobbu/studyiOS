import UIKit

var greeting = "Hello, playground"

// Comment!

/*
Multi Line
*/

let value = arc4random_uniform(100)
print("--> \(value)")

// 튜플
let coordinates = (4, 6)
let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 2, y: 3)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3

// Boolean
let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5
if isFourGreaterThanFive {
    print("---> 참")
} else {
    print("---> 거짓")
}

let name1 = "jin"
let name2 = "jason"

let isTwoNameSame = name1 == name2
let isTwoNameDifferent = name1 != name2

let isJason = name2 == "jason"
let isMale = false

// and
let jasonMale = isJason && isMale
// or
let jsaonOrMale = isJason || isMale

let greetingMessage: String
if isJason {
    greetingMessage = "Hello Jason"
} else {
    greetingMessage = "Hello Somebody"
}
print("Msg: \(greetingMessage)")

// 삼항 연산자
let greetingMessage2: String = isJason ? "Hello Jason" : "Hello Somebody"
print("Msg: \(greetingMessage2)")

// Scope --> 변수가 사용되는 범위
var hour = 50
let payPerHour = 10000
var salary = 0

if hour > 40 {
    let extraHour = hour - 40
    salary += extraHour * payPerHour * 2
    hour -= extraHour
}

salary += hour * payPerHour
// print(extraHour) --> local
