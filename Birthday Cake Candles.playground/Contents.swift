//: Playground - noun: a place where people can play

import UIKit

func birthdayCakeCandles(ar: [Int]) -> Int {
    var result = 0
    
    var candleHeights = [Int:Int]()
    
    for candle in ar {
        if let i = candleHeights[candle] {
            candleHeights[candle] = i + 1
        } else {
            candleHeights[candle] = 1
        }
    }
    
    let sortedByHeightOccurences = candleHeights.sorted(by:){a,b in a.value > b.value}
//    print(sortedByHeightOccurences)
    if let top = sortedByHeightOccurences.first {
        result = top.value
    }
    return result
}

let arr = [3, 2, 1, 3]
let result = birthdayCakeCandles(ar: arr)
print(result)
