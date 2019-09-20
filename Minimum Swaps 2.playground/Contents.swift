//: Playground - noun: a place where people can play

import Foundation

func minimumSwaps(arr: [Int]) -> Int {
    var swaps = 0
    var arrCopy = arr
    print(arrCopy)
    for i in 0...arrCopy.count - 1 {
        let numA = arrCopy[i]
        // if not in sequence
        
        while i + 1 != arrCopy[i] {
            //print("\(numA) \(i + 1)")
            
            let numB = arrCopy[numA - 1]
            //print(numB)
            arrCopy[i] = numB
            arrCopy[numA - 1] = numA
            swaps += 1
        }
    }
    print(arrCopy)
    return swaps
}

let arr = [4, 3, 1, 2]
//let arr = [1, 3, 5, 2, 4, 6, 7]
//let arr = [2, 31, 1, 38, 29, 5, 44, 6, 12, 18, 39, 9, 48, 49, 13, 11, 7, 27, 14, 33, 50, 21, 46, 23, 15, 26, 8, 47, 40, 3, 32, 22, 34, 42, 16, 41, 24, 10, 4, 28, 36, 30, 37, 35, 20, 17, 45, 43, 25, 19]
let swaps = minimumSwaps(arr: arr)
print(swaps)
