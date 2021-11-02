import UIKit


struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    // method
    func remainSeats() -> Int {
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    
    mutating func register() { // method가 stored property 변경시키는 경우 mutating
        // 등록된 학생수 증가
        numOfRegistered += 1
    }
    
    static let target: String = "Anybody" // type property
    static func academyName() -> String { // type method
        return "fastcampus"
    }
}

var lec = Lecture(title: "iOS Basic")

lec.remainSeats()

lec.register()
lec.remainSeats()

Lecture.target
Lecture.academyName()


struct Math {
    static func abs(value: Int) -> Int {
        if value >= 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

// method extension
extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value / 2
    }
}

let value: Int = 3

extension Int { // apple이 만들어 놓은 것에도 가능
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self / 2
    }
}

value.square()
value.half()
