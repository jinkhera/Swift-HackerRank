//: Playground - noun: a place where people can play

import Foundation

struct Printer<T> {
    /**
     *    Name: printArray
     *    Print each element of the generic array on a new line. Do not return anything.
     *    @param A generic array
     **/
    
    // Write your code here
    func printArray<T>(array: [T]){
        array.forEach { (i) in
            print(i)
        }
    }
}

Printer<Int>().printArray(array: [1,2,2,5,9])
