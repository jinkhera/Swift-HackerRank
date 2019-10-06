//: Playground - noun: a place where people can play

import UIKit

enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        if n < 0 || p < 0 {
            throw RangeError.NotInRange("n and p should be non-negative")
        } else {
            return Int(pow(Double(n), Double(p)))
        }
    } // End of function power
}

let myCalculator = Calculator()
let n = 4
let p = 5

do {
    let ans = try myCalculator.power(n: n, p: p)
    print(ans)
} catch RangeError.NotInRange(let errorMsg) {
    print(errorMsg)
}
