//: Playground - noun: a place where people can play

import UIKit

func miniMaxSum(arr: [Int]) -> Void {
    let sorted = arr.sorted { (a, b) -> Bool in
        a < b
    }
    let min = sorted.prefix(sorted.count - 1).reduce(0) {$0 + $1}
    let max = sorted.suffix(from: 1).reduce(0) {$0 + $1}
    
    print("\(min) \(max)")
}

//let arr = [1, 2, 3, 4, 5]
let arr = [1, 3, 5, 7, 9]
miniMaxSum(arr: arr)
