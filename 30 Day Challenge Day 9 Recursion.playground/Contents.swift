//: Playground - noun: a place where people can play

import UIKit

func factorial(n: Int) -> Int {
    if n >= 1 {
        return n * factorial(n: n - 1)
    } else {
        return 1
    }
}

let result = factorial(n: 3)
print(result)
