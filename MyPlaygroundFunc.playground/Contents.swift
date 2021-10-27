// FUNCTION
import UIKit

func printName() {
    print("My name is Jason")
}
printName()

// param 1
func multipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}
multipleOfTen(value: 5)

// param 2
func calTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}
calTotalPrice(price: 1500, count: 5)

// calTotalPrice(1600, 10) --> 현재는 에러 발생
// 파라미터 앞이 보여지는 글자 -- "_"으로 하면 아무것도 안보이고, 한글로도 가능
func calTotalPrice2(_ price: Int, _ count: Int) {
    print("Total Price: \(price * count)")
}
calTotalPrice2(1500, 10)

// param w default value
func calTotalPrice3(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}
calTotalPrice3(count: 19)
calTotalPrice3(price: 30000, count: 19)

// return value
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}
let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice

// task
// 1. 성, 이름을 받아서 full name을 출력하는 함수 만들기
func printFullName(last: String, first: String) {
    print("Full Name - \(last) \(first)")
}
printFullName(last: "Choi", first: "Hojune")

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
func printFullName2(_ last: String, _ first: String) {
    print("Full Name - \(last) \(first)")
}
printFullName2("Choi", "Hojune")

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기
func printFullName3(_ last: String, _ first: String) -> String {
    let fullName = "\(last) \(first)"
    return fullName
}
let name = printFullName3("Choi", "Hojune")
name
