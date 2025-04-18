// // import Foundation
// struct ComplexNumber {
//    var real: Double
//    var imag: Double
        
//    // Overloading + operator to add two complex numbers
//    static func+(left: ComplexNumber, right: ComplexNumber) -> ComplexNumber {
//       return ComplexNumber(real: left.real + right.real, imag: left.imag + right.imag)
//    }
// }
// let complexNumber1 = ComplexNumber(real: 2.1, imag: 2.0)
// let complexNumber2 = ComplexNumber(real: 6.1, imag: 9.0)

// // Calling + operator to add two complex numbers
// let sumOfComplexNumbers = complexNumber1 + complexNumber2
// print(sumOfComplexNumbers)

// print ("hell world");

import Foundation

// Base class
class Animal {
    var name: String
    private var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func speak() {
        print("\(name) makes a sound.")
    }
    
    func getAge() -> Int {
        return age
    }
}

// Subclass
class Dog: Animal {
    var breed: String
    
    init(name: String, age: Int, breed: String) {
        self.breed = breed
        super.init(name: name, age: age)
    }
    
    override func speak() {
        print("\(name) barks. Woof! 🐶")
    }
    
    func fetch() {
        print("\(name) is fetching the ball.")
    }
}

// Usage
let myDog = Dog(name: "Buddy", age: 3, breed: "Golden Retriever")
myDog.speak()             // Buddy barks. Woof!
myDog.fetch()             // Buddy is fetching the ball.
print("Age: \(myDog.getAge())") // Age: 3
