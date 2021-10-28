// Collection
import UIKit

// ---------
// Array
let evenNumbers: [Int] = [2, 4, 6, 8]
let evenNumbers2: Array<Int> = [2, 4, 6, 8]

// evenNumbers.append(10) --> 상수이기 때문에 에러 발생
var evenNumber: [Int] = [2, 4, 6, 8]

evenNumber.append(10)
evenNumber += [12, 14, 16]
evenNumber.append(contentsOf: [18, 20])

let isArrEmpty = evenNumber.isEmpty
isArrEmpty

evenNumber.count
print(evenNumber.first)
print(evenNumber.last)

let firstItem = evenNumber.first // optional

if let firstElement = evenNumber.first {
    print("-- first : \(firstElement)")
} else {
    print("empty arr")
}

evenNumber.min()
evenNumber.max()

evenNumber[0]
evenNumber[1]
evenNumber[...2]

evenNumber.contains(3)
evenNumber.contains(4)

evenNumber.insert(0, at: 0)
evenNumber

evenNumber.remove(at: 0)
evenNumber
//evenNumber.removeAll()

evenNumber[0] = -2
evenNumber

evenNumber[0...2] = [-2, 0, 2]
evenNumber

evenNumber.swapAt(0, 2)

for num in evenNumber {
    print(num)
}

for (idx, num) in evenNumber.enumerated() {
    print("idx: \(idx) num: \(num)")
}

evenNumber.dropFirst(2)
evenNumber

evenNumber.dropLast(3)

evenNumber.prefix(3)

evenNumber.suffix(3)

evenNumber.removeAll()
evenNumber

// ---------------------------------

// Dictionary
var scoreDict: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
var scoreDict2: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

scoreDict["Jason"]
scoreDict["Jerry"]

if let score = scoreDict["Jason"] {
    score
} else {
    print("없음")
}

scoreDict.isEmpty
scoreDict.count

scoreDict["Jason"] = 100
scoreDict

scoreDict["Sean"] = 100
scoreDict

scoreDict["Jason"] = nil
scoreDict

for (name, score) in scoreDict {
    print("\(name) \(score)")
}

for key in scoreDict.keys {
    print(key)
}

// task
var infoDict: [String: String] = ["Name": "Jason", "Job": "iOS Eng", "City": "Seoul"]
infoDict["City"] = "Busan"
infoDict

func printDict(dict: [String: String]) {
    if let name = dict["Name"], let city = dict["City"] {
        print(name, city)
    } else {
        print("no data")
    }
}
printDict(dict: infoDict)

// ---------------------

// Set

var someSet: Set<Int> = [1, 2, 3, 1]

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet.remove(1)

someSet
