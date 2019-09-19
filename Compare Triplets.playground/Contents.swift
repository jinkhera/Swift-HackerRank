//: Playground - noun: a place where people can play

import UIKit

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var results : [Int] = [0, 0]
    for i in 0...2 {
        let a = a[i]
        let b = b[i]
        if a > b {
            results[0] += 1
        } else if a < b {
            results[1] += 1
        }
    }
    return results
}

let a = [17, 28, 30]
let b = [99, 16, 8]

let results = compareTriplets(a: a, b: b)
print(results)
