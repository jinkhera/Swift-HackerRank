//: Playground - noun: a place where people can play

import UIKit

func shiftLeft(a: [Int], d: Int, n: Int) -> [Int] {
    var temp = Array<Int>(repeating: 0, count: n)
    var i = 0
    for o in a {
        let shifted = i - d
        let index = shifted < 0 ? shifted + n : shifted
        temp[index] = o
        i += 1
    }
//    print(temp)
    return temp
}

//let a = [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51]
let a = [1, 2, 3, 4, 5]
let d = 4
let n = a.count

let result = shiftLeft(a: a, d: d, n: n)
let s = result.map { "\($0)" }.joined(separator: " ")
print(s)


//77 97 58 1 86 58 26 10 86 51 41 73 89 7 10 1 59 58 84 77
//77 97 58 1 86 58 26 10 86 51 41 73 89 7 10 1 59 58 84 77

