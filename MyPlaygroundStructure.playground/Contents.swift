import UIKit
import Foundation


// 문제: 가장 가까운 편의점 찾기
let store1 = (x: 3, y: 5, name: "gs")
let store2 = (x: 4, y: 6, name: "seven")
let store3 = (x: 1, y: 7, name: "cu")

func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

func printClosestStore(currentLocation: (x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
        }
    }
    print("Closest store: \(closestStoreName)")
}

let myLocation = (x: 2, y: 2)
let stores = [store1, store2, store3]

printClosestStore(currentLocation: myLocation, stores: stores)


// Improve Code

struct Location {
    let x: Int
    let y: Int
}

func distanceImproved(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distanceImproved(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}

let store4 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store5 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store6 = Store(loc: Location(x: 1, y: 7), name: "cu")



func printClosestStoreImproved(currentLocation: Location, stores: [Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distanceImproved(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName), is deliverable: \(isDeliverable)")
}

let myLocation2 = Location(x: 2, y: 5)
let stores2 = [store4, store5, store6]

printClosestStoreImproved(currentLocation: myLocation2, stores: stores2)


// task
// 1. 강의 이름, 강사 이름, 학생수를 가지는 struct 만들기(Lecture)
// 2. 강의 어레이와 강사 이름을 받아서, 해당 강사의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

struct Lecture {
    let name: String
    let teacherName: String
    let studentCnt: Int
}

func printTeacherName(lectures: [Lecture], teacher: String) {
//    var lectureName = ""
//    for lecture in lectures {
//        if teacher == lecture.teacherName {
//            lectureName = lecture.lectureName
//        }
//    }
    
    let lectureName = lectures.first { (lec) -> Bool in
        return lec.teacherName == teacher
    }?.name ?? ""
    
    // let lectureName = lectures.first { $0.teacherName == teacher }?.name ?? ""
    
    print("\(teacher) 선생님 담당 강의 --> \(lectureName)")
}

let lecture1 = Lecture(name: "math", teacherName: "wj.hyeon", studentCnt: 5)
let lecture2 = Lecture(name: "english", teacherName: "yw.lee", studentCnt: 8)
let lecture3 = Lecture(name: "history", teacherName: "ld.lee", studentCnt: 12)
let lectures = [lecture1, lecture2, lecture3]

printTeacherName(lectures: lectures, teacher: "ld.lee")
