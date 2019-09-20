//: Playground - noun: a place where people can play

import UIKit

func staircase(n: Int) -> Void {
    for i in 1...n {
        let arrayHash = Array(repeating: "#", count: i)
        let arrayWS = Array(repeating: " ", count: n - i)
        print("\(arrayWS.joined(separator: ""))\(arrayHash.joined(separator: ""))")
    }
}

staircase(n: 4)
