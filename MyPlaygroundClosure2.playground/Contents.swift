import Cocoa


// Example 1: Simple Closure
let simpleClosure = {
    
}
simpleClosure()

// Example 2: Code Block Closure
let codeClosure = {
    print("Hello, Closure")
}
codeClosure()

// Example 3: Input Closure
let inputClosure: (String) -> () = { name in
    print("\(name)")
}
inputClosure("Jason")

// Example 4: Reutrn Closure
let returnClosure: (String) -> String = { name in
    let message = "ios developer \(name)"
    return message
}
let result = returnClosure("Jason")
print(result)

// Example 5: Func with closure as parameter
func someSimpleFunction(simpleClosure: () -> Void) {
    print("함수에서 호출")
}
someSimpleFunction(simpleClosure: {
    print("클로저에서 호출")
})

func someSimpleFunction2(simpleClosure: () -> Void) {
    print("함수에서 호출")
    simpleClosure()
}
someSimpleFunction2(simpleClosure: {
    print("클로저에서 호출")
})

// Example 6: Trailing Closure
func anySimpleFunction(message: String, simpleClosure: () -> Void) {
    print("함수 호출 w \(message)")
    simpleClosure()
}

anySimpleFunction(message: "ios dev", simpleClosure: {
    print("from closure")
})

anySimpleFunction(message: "ios dev") {
    print("from closure")
}
