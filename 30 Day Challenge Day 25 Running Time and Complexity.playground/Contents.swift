//: Playground - noun: a place where people can play

import UIKit

// https://stackoverflow.com/questions/31105664/check-if-a-number-is-prime
func isPrime(_ n: Int) {
    guard n >= 2     else { print("Not prime")
        return}
    guard n != 2     else { print("Prime")
        return}
    guard n % 2 != 0 else { print("Not prime")
        return}
    if !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 } {
        print("Prime")
    } else {
        print("Not prime")
    }
}

// my implementation
//func isPrime(_ n: Int) {
//    guard n > 1 else {
//        print("Not prime")
//        return
//    }
//
//    for i in 2...n {
//        if n != i && n % i == 0 {
//            print("Not prime")
//            return
//        }
//    }
//
//    print("Prime")
//}

isPrime(6)


