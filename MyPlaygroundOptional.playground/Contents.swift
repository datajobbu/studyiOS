// SWIFT Optional
import UIKit

var carName: String? // = "Tesla"
carName = nil
carName = "Tank"

var favoriteActor: String? = "Jung Jae Lee"
let num = Int("10")

// Advanced Optional
// 1. Forced Unwrapping
print(carName)
print(carName!) // !로 강제로 까는데, nil이면 경고를 줌
carName = nil
print(carName)

// 2. Optional Binding (if let)
// carName = "Tank"
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name 없음")
}

func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        if parsedInt < 0 {
            print(-parsedInt)
        } else {
            print(parsedInt)
        }
    } else {
        print("Cant convert")
    }
}
printParsedInt(from: "100")
printParsedInt(from: "100a")

// 3. Optional Binding (guard)
// 2의 코드는 복잡해지기 쉬움 -- Cyclomatic Complexity 감소
func printParsedIntGuard(from: String) {
    guard let parsedInt = Int(from) else {
        print("Cant convert")
        return
    }
    print(parsedInt)
}
printParsedIntGuard(from: "100")
printParsedIntGuard(from: "100a")

// 4. Nil Coalescing
// ?? -> carName이 nil이면 "모델 S"를 넘겨주겠다.
let carName2 = "모델 3"
let myCarName: String = carName2 ?? "모델 S"


// Task
// 1. 최애 음식이름을 담는 변수 작성 (String?)
let favoritFood: String? = "Pizza"

// 2. 옵셔널 바인딩 이용해서 값 확인
func printFavoriteFood(from: String?) {
    guard let foodName = from else {
        print("I dont have one")
        return
    }
    print(foodName)
}
printFavoriteFood(from: nil)
printFavoriteFood(from: favoritFood)

if let foodName = favoritFood {
    print(foodName)
} else {
    print("dkdkkdk")
}

// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?
let nickName: String? = nil
let outNickName: String = nickName ?? "abc"
outNickName

func printNickName(name: String?) {
    guard let nickName = name else {
        print("make nickname")
        return
    }
    
    print(nickName)
}
printNickName(name: nil)
printNickName(name: "Pizza")
