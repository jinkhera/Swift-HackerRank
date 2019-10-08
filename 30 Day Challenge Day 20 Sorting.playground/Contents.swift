//: Playground - noun: a place where people can play

import Foundation

func bubbleSort(a: [Int], n: Int) {
    // Track number of elements swapped during a single array traversal
    var numberOfSwaps = 0;
    var ar = a
    for _ in 0..<n {
        
        for j in 0..<(n - 1) {
            if ar[j] > ar[j + 1] {
                swap(elementAtIndex: j, withElementAtIndex: j + 1, inArray: &ar)
                numberOfSwaps += 1
            }
        }
        
        // If no elements were swapped during a traversal, array is sorted
        if (numberOfSwaps == 0) {
            break;
        }
    }
    
//    Array is sorted in 0 swaps.
//    First Element: 1
//    Last Element: 3
    print("Array is sorted in \(numberOfSwaps) swaps.")
    print("First Element: \(ar.first!)")
    print("Last Element: \(ar.last!)")
}

func swap(elementAtIndex a: Int, withElementAtIndex b: Int, inArray ar: inout [Int]) {
    ar.swapAt(a, b)
}

let arr = [5, 7, 9, 10, 2]
//var arr = [3, 2, 1]
bubbleSort(a: arr, n: arr.count)
