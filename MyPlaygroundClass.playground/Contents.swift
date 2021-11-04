import UIKit


struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
    // designated initialization
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    // convenience initialization
    convenience init(student: Student) {
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10, credits: 3)

jason.grades.append(math)
jason.grades.append(history)


class Athelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // 2 phase initialization
        // Phase1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        // Phase2
        self.train()
    }
    
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: Athelete {
    var footballTeam = "FC SWIFT"
    
    override func train() {
        trainedTime += 2
    }
}

var athelete1 = Athelete(firstName: "Yuna", lastName: "Kim", sports: ["football"])
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son", sports: ["football"])

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

athelete1 = athelete2 as Athelete // upcasting
athelete1.train()
athelete1.trainedTime

if let son = athelete1 as? FootballPlayer { // downcasting
    print("--> team: \(son.footballTeam)")
}

let athelete3 = Athelete(name: "Mike")
let student4 = Student(student: jason)
