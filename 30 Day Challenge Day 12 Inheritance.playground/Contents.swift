//: Playground - noun: a place where people can play

import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int
    
    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    
    public init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
        
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        let average = self.testScores.reduce(0) {$0 + $1} / testScores.count
        
        switch average {
        case 90...100:
            return "O"
        case 80...89:
            return "E"
        case 70...79:
            return "A"
        case 55...69:
            return "P"
        case 40...54:
            return "D"
        default:
            return "T"
        }
    }
} // End of class Student

let firstname = "Heraldo"
let lastname = "Memelli"
let id = 8135627
let scores = [100, 80]

let student = Student(firstName: firstname, lastName: lastname, id: id, scores: scores)
student.printPerson()
let c = student.calculate()
print("Grade: \(c)")
