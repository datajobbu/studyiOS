import UIKit


struct Person {
    // stored property(instance property)
    var firstName: String {
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet {
            print("didset: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    // lazy property
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
    // computed property(instance property)
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    // typed property -- static
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "Kim"

person.fullName
person.fullName = "Jay Park"

person.fullName

Person.isAlien

person.isPopular
