//: Playground - noun: a place where people can play

import Foundation

func calculateWhere(n: Int, k: Int) -> Int {
    var found = false
    var r = 0
    for i in 0...(n - 1) {
        for j in (i + 1)...n {
            let s = i & j
            if s > r && s < k {
                r = s
            }
            if r == k - 1 {
                found = true
                break
            }
        }
        if found {
            break
        }
    }
    return r
}

var dataDict = [Int: Int]()

dataDict[4] = 2
dataDict[8] = 5
dataDict[2] = 2

for kvp in dataDict {
    let n = kvp.key
    
    let k = kvp.value
//    print("Calculate \(n):\(k)")
    print(calculateWhere(n:n, k:k))
}


